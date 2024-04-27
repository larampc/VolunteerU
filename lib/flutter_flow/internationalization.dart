import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'pt'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? ptText = '',
  }) =>
      [enText, ptText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // MainPage
  {
    'mjvca2ib': {
      'en': 'Search listings...',
      'pt': 'Pesquisar listagens...',
    },
    'qn9w3qgk': {
      'en': 'Filters',
      'pt': 'Filtros',
    },
    'xylitnuk': {
      'en': 'Community',
      'pt': 'Comunidade',
    },
    '69pv6edm': {
      'en': 'Animals',
      'pt': 'Animais',
    },
    'r6n66sku': {
      'en': 'Nature',
      'pt': 'Natureza',
    },
    'jkcl6jrp': {
      'en': 'Homeless',
      'pt': 'Morador de rua',
    },
    '2aadyokh': {
      'en': 'Elderly',
      'pt': 'Idoso',
    },
    'etfecr94': {
      'en': 'All',
      'pt': 'Todos',
    },
    '8fyips0i': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // CreateAccount
  {
    'ou63wokz': {
      'en': 'Create an account',
      'pt': 'Crie a sua conta aqui',
    },
    'pn3n6qeo': {
      'en': 'Let\'s get started by filling out the form below.',
      'pt': 'Vamos começar preenchendo o formulário abaixo.',
    },
    'bdog5bnq': {
      'en': 'Organization Name',
      'pt': 'Nome da organização',
    },
    'ukdj8sde': {
      'en': 'Phone number',
      'pt': 'Número de telefone',
    },
    '0dhiq066': {
      'en': 'Link',
      'pt': 'Link',
    },
    '1cnmr6ue': {
      'en': 'Name is required',
      'pt': 'O nome é obrigatório',
    },
    'bmw95ssl': {
      'en': 'Name is required',
      'pt': 'O nome é obrigatório',
    },
    'e4qsbipq': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'gvje3lps': {
      'en': 'Phone number is required',
      'pt': 'O número de telefone é obrigatório',
    },
    '7jvtfqjq': {
      'en': 'Invalid phone number',
      'pt': 'Número de telefone inválido',
    },
    'j0f0ow8l': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'oxck2a6o': {
      'en': 'Link is required',
      'pt': 'O link é obrigatório',
    },
    'zgqeb1cz': {
      'en': 'Invalid link',
      'pt': 'Link inválido',
    },
    '25immin9': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'cu4dvuo4': {
      'en': 'First Name',
      'pt': 'Primeiro nome',
    },
    'p31826uj': {
      'en': 'Last Name',
      'pt': 'Sobrenome',
    },
    'hk5jkeqx': {
      'en': 'Phone number',
      'pt': 'Número de telefone',
    },
    '0lpzkatj': {
      'en': 'Birthday year',
      'pt': 'Ano de aniversário',
    },
    '0hl27xg3': {
      'en': 'Course',
      'pt': 'Curso',
    },
    'unlvpvyi': {
      'en': 'First name is required',
      'pt': 'O primeiro nome é necessário',
    },
    'o68tomgr': {
      'en': 'First name is required',
      'pt': 'O primeiro nome é necessário',
    },
    '5mu0631g': {
      'en': 'First name cannot have \'space\'',
      'pt': 'O primeiro nome não pode ter \'espaço\'',
    },
    'hf708xga': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'hll5obpb': {
      'en': 'Last Name is required',
      'pt': 'O sobrenome é obrigatório',
    },
    'n1px7ljk': {
      'en': 'Last Name is requiredLast Name is required',
      'pt': 'O sobrenome é obrigatórioO sobrenome é obrigatório',
    },
    '1ainb3xs': {
      'en': 'Last name cannot have \'space\'',
      'pt': 'O sobrenome não pode ter \'espaço\'',
    },
    'h6kxwqvt': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'cyu5d8ap': {
      'en': 'Invalid phone number',
      'pt': 'Número de telefone inválido',
    },
    'qgtq271t': {
      'en': 'Invalid phone number',
      'pt': 'Número de telefone inválido',
    },
    'mqrjxjf6': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    '7im3ur2v': {
      'en': 'Birthday year is required',
      'pt': 'O ano de aniversário é obrigatório',
    },
    'i5x6fyyo': {
      'en': 'Invalid birthday year',
      'pt': 'Ano de aniversário inválido',
    },
    'emyllajg': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'yheobf28': {
      'en': 'Course is required',
      'pt': 'O curso é obrigatório',
    },
    '9hyn1rzh': {
      'en': 'Course is required',
      'pt': 'O curso é obrigatório',
    },
    '06au2585': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'jrn914mp': {
      'en': 'Email',
      'pt': 'E-mail',
    },
    'n4z06je1': {
      'en': 'Password',
      'pt': 'Senha',
    },
    '2dvomm90': {
      'en': 'Confirm Password',
      'pt': 'Confirme sua senha',
    },
    'lqehfxmv': {
      'en': 'Email is required',
      'pt': 'O e-mail é obrigatório',
    },
    'tl9umto4': {
      'en': 'Invalid email',
      'pt': 'E-mail inválido',
    },
    '4tvvqsbk': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'cqnxl9mq': {
      'en': 'Password must have at least 6 characters',
      'pt': 'A senha deve ter pelo menos 6 caracteres',
    },
    'tjszvgis': {
      'en': 'Password must have at least 6 characters',
      'pt': 'A senha deve ter pelo menos 6 caracteres',
    },
    '1xorqqzx': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'ej1z40fr': {
      'en': 'Password must have at least 6 characters',
      'pt': 'A senha deve ter pelo menos 6 caracteres',
    },
    'rb4ucz9h': {
      'en': 'Password must have at least 6 characters',
      'pt': 'A senha deve ter pelo menos 6 caracteres',
    },
    'mpuonrz1': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'l1vljkp2': {
      'en': 'Create Account',
      'pt': 'Criar uma conta',
    },
    '2yq7upcd': {
      'en': 'Already have an account? ',
      'pt': 'já tem uma conta?',
    },
    'j6s08grr': {
      'en': 'Sign In here',
      'pt': 'Faça login aqui',
    },
    'z6p0jzbj': {
      'en': 'Are you an organization? ',
      'pt': 'Você é uma organização?',
    },
    'c8h5l6co': {
      'en': 'Register here',
      'pt': 'Registre-se aqui',
    },
    'wgkuud8d': {
      'en': 'Are you a student? ',
      'pt': 'Você é estudante?',
    },
    'fuvujy06': {
      'en': 'Register here',
      'pt': 'Registre-se aqui',
    },
    'c8kt4xnc': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // Login
  {
    '78dt8tus': {
      'en': 'Sign In',
      'pt': 'Entrar',
    },
    'qrry6elf': {
      'en': 'Use the account below to sign in.',
      'pt': 'Use a conta abaixo para fazer login.',
    },
    'ono65v0m': {
      'en': 'Email',
      'pt': 'E-mail',
    },
    'ohwj63b9': {
      'en': 'Password',
      'pt': 'Senha',
    },
    'w1sgkb1i': {
      'en': 'Email is required',
      'pt': 'O e-mail é obrigatório',
    },
    'gmfox7q8': {
      'en': 'Invalid Email',
      'pt': 'E-mail inválido',
    },
    '4ig3bvmj': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'kcbl1g2t': {
      'en': 'Password is required',
      'pt': 'Senha requerida',
    },
    'n05kjgp0': {
      'en': 'Password is required',
      'pt': 'Senha requerida',
    },
    'yvfybapj': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'fwpgeumd': {
      'en': 'SignIn',
      'pt': 'Entrar',
    },
    '765e4uco': {
      'en': 'Forgot your password?',
      'pt': 'Esqueceu sua senha?',
    },
    't9fsaxmx': {
      'en': 'Don\'t have an account? ',
      'pt': 'Não tem uma conta?',
    },
    'a0chh3kq': {
      'en': 'Register here',
      'pt': 'Registre-se aqui',
    },
    'x6xr7xr5': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // Profile
  {
    '0l3h6ku2': {
      'en': 'Settings',
      'pt': 'Configurações',
    },
    '2c4px0hk': {
      'en': 'Phone Number',
      'pt': 'Número de telefone',
    },
    '6z8777bn': {
      'en': 'Course',
      'pt': 'Curso',
    },
    'eb3eyb31': {
      'en': 'Birthday Year',
      'pt': 'Ano de aniversário',
    },
    'vca002z7': {
      'en': 'Link',
      'pt': 'Link',
    },
    'n1mgv0v7': {
      'en': 'Language',
      'pt': 'Linguagem',
    },
    'gbf8g2u7': {
      'en': 'Profile Settings',
      'pt': 'Configurações de perfil',
    },
    't7nnt4et': {
      'en': 'Edit Profile',
      'pt': 'Editar Perfil',
    },
    'z2g09x2r': {
      'en': 'Notification Settings',
      'pt': 'Configurações de notificação',
    },
    'o3t8qkc3': {
      'en': 'Log out of account',
      'pt': 'Sair da conta',
    },
    'n9uzi1vu': {
      'en': 'Log Out?',
      'pt': 'Sair?',
    },
    'wjx26zqb': {
      'en': 'Profile',
      'pt': 'Perfil',
    },
  },
  // CreateAction
  {
    'wd5fj8d7': {
      'en': 'Create Action',
      'pt': 'Criar ação',
    },
    'ogjlt8c5': {
      'en': 'Fill out the information below to post a volunteering initiative',
      'pt':
          'Preencha as informações abaixo para postar uma iniciativa de voluntariado',
    },
    'kjhwvco2': {
      'en': 'Action name...',
      'pt': 'Nome da ação...',
    },
    'itvg1ugd': {
      'en': 'Description...',
      'pt': 'Descrição...',
    },
    'yl5elvd6': {
      'en': 'Select Location',
      'pt': 'Selecione o local',
    },
    '9bhort50': {
      'en': 'Category',
      'pt': 'Categoria',
    },
    '1yjrr5qk': {
      'en': 'Community',
      'pt': 'Comunidade',
    },
    'mrf314uv': {
      'en': 'Animals',
      'pt': 'Animais',
    },
    'zlsulcyd': {
      'en': 'Nature',
      'pt': 'Natureza',
    },
    'lc2tnkjb': {
      'en': 'Homeless',
      'pt': 'Morador de rua',
    },
    'myrrqcmy': {
      'en': 'Elderly',
      'pt': 'Idoso',
    },
    'bj4r4e3k': {
      'en': 'Create Product',
      'pt': 'Criar produto',
    },
    'mdbjeixo': {
      'en': 'Duration',
      'pt': 'Duração',
    },
    'v578xqzl': {
      'en': 'Upload image',
      'pt': 'Enviar Imagem',
    },
    'd2piabr7': {
      'en': 'Create Action',
      'pt': 'Criar ação',
    },
    'cz0vx98s': {
      'en': 'Name is required',
      'pt': 'O nome é obrigatório',
    },
    '8eflun3x': {
      'en': 'Name is required',
      'pt': 'O nome é obrigatório',
    },
    'db56bbpo': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'l4mi0cud': {
      'en': 'Description is required',
      'pt': 'A descrição é obrigatória',
    },
    'unywo9lb': {
      'en': 'Description is required',
      'pt': 'A descrição é obrigatória',
    },
    'srxb8cqw': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    '2zrur2fe': {
      'en': 'Location is required',
      'pt': 'A localização é obrigatória',
    },
    'xuhdvoop': {
      'en': 'Location is required',
      'pt': 'A localização é obrigatória',
    },
    'thwbcb9v': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'vzkgtubo': {
      'en': 'Duration is required',
      'pt': 'A duração é obrigatória',
    },
    'rsp7cy33': {
      'en': 'Duration is required',
      'pt': 'A duração é obrigatória',
    },
    'aukrjhos': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    '73xim358': {
      'en': 'New',
      'pt': 'Lar',
    },
  },
  // ForgotPassword
  {
    '9yzv7ag7': {
      'en': 'Forgot your password',
      'pt': 'Esqueceu sua senha',
    },
    'sxqfor4b': {
      'en': 'Enter your account  email.',
      'pt': 'Digite o e-mail da sua conta.',
    },
    'ncgy21ev': {
      'en': 'Email',
      'pt': 'E-mail',
    },
    '9ni7ctkq': {
      'en': 'Reset Password',
      'pt': 'Redefinir senha',
    },
    'zu3ne9c5': {
      'en': 'Remembered your password? ',
      'pt': 'Lembrou-se da sua senha?',
    },
    '54qjcadp': {
      'en': 'Sign In here',
      'pt': 'Faça login aqui',
    },
    'xq005t71': {
      'en': 'Name is required',
      'pt': 'O nome é obrigatório',
    },
    'ssxuuppu': {
      'en': 'Name is required',
      'pt': 'O nome é obrigatório',
    },
    'ay7q6jpm': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    '0e5ctdce': {
      'en': 'Last Name is required',
      'pt': 'O sobrenome é obrigatório',
    },
    'nopqrmfc': {
      'en': 'Last Name is required',
      'pt': 'O sobrenome é obrigatório',
    },
    'u8ye9wqh': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    '1ooili0e': {
      'en': 'Invalid phone number',
      'pt': 'Número de telefone inválido',
    },
    'vi23e71d': {
      'en': 'Invalid phone number',
      'pt': 'Número de telefone inválido',
    },
    '20098zey': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    '5vuj1icb': {
      'en': 'Birthday year is required',
      'pt': 'O ano de aniversário é obrigatório',
    },
    '47s10d1j': {
      'en': 'Invalid birthday year',
      'pt': 'Ano de aniversário inválido',
    },
    '7joki7m4': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'p82u92pl': {
      'en': 'Course is required',
      'pt': 'O curso é obrigatório',
    },
    '8qawfxxb': {
      'en': 'Course is required',
      'pt': 'O curso é obrigatório',
    },
    'lfit1eey': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    '2hc67noc': {
      'en': 'Email is required',
      'pt': 'O e-mail é obrigatório',
    },
    '15hpvnu9': {
      'en': 'Invalid Email',
      'pt': 'E-mail inválido',
    },
    'deie34lg': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    '8paesuxf': {
      'en': 'Password must have at least 6 characters',
      'pt': 'A senha deve ter pelo menos 6 caracteres',
    },
    'hs6nhls0': {
      'en': 'Password must have at least 6 characters',
      'pt': 'A senha deve ter pelo menos 6 caracteres',
    },
    'pmgd9xas': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'in5u0hce': {
      'en': 'Password must have at least 6 characters',
      'pt': 'A senha deve ter pelo menos 6 caracteres',
    },
    'b3yg6lhl': {
      'en': 'Password must have at least 6 characters',
      'pt': 'A senha deve ter pelo menos 6 caracteres',
    },
    'gzcs69dv': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'i3jjeh28': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // edit_profile
  {
    'c67gte97': {
      'en': 'Complete Profile',
      'pt': 'Perfil completo',
    },
    't0aio0w5': {
      'en': 'Your information',
      'pt': 'Sua informação',
    },
    'lr4t9ftd': {
      'en': 'First  Name',
      'pt': 'Primeiro nome',
    },
    'sdth2m61': {
      'en': 'Last Name',
      'pt': 'Sobrenome',
    },
    'si3k21nm': {
      'en': 'Course',
      'pt': 'Curso',
    },
    'pjow0xg9': {
      'en': 'Course',
      'pt': 'Curso',
    },
    'ytnw0s8m': {
      'en': 'Birthday Year',
      'pt': 'Ano de aniversário',
    },
    '55336q95': {
      'en': 'Birthday Year',
      'pt': 'Ano de aniversário',
    },
    'ry2zx2sh': {
      'en': 'First name is required',
      'pt': 'O primeiro nome é necessário',
    },
    'bwt1pqxg': {
      'en': 'First name is required',
      'pt': 'O primeiro nome é necessário',
    },
    '1239v147': {
      'en': 'First name cannot have \'space\'',
      'pt': 'O primeiro nome não pode ter \'espaço\'',
    },
    'raxxow1r': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    '0x2fqe7a': {
      'en': 'Last name is required',
      'pt': 'O sobrenome é obrigatório',
    },
    '2oy9iwni': {
      'en': 'Last name is required',
      'pt': 'O sobrenome é obrigatório',
    },
    '3ooivc25': {
      'en': 'Last name cannot have \'space\'',
      'pt': 'O sobrenome não pode ter \'espaço\'',
    },
    'mzcpba9e': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'j1h2fu7k': {
      'en': 'Course is required',
      'pt': 'O curso é obrigatório',
    },
    'kyow2i7k': {
      'en': 'Course is required',
      'pt': 'O curso é obrigatório',
    },
    'tsr8u38a': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'jvetz7sh': {
      'en': 'Birthday year is required',
      'pt': 'O ano de aniversário é obrigatório',
    },
    'c81glokt': {
      'en': 'Invalid birthday year',
      'pt': 'Ano de aniversário inválido',
    },
    'w7gmjqub': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'lnah870z': {
      'en': 'Name',
      'pt': 'Nome',
    },
    'ud0bgtti': {
      'en': 'Link',
      'pt': 'Link',
    },
    'uknxwz5v': {
      'en': 'Name is required',
      'pt': 'O nome é obrigatório',
    },
    'gl9rehlk': {
      'en': 'Name is required',
      'pt': 'O nome é obrigatório',
    },
    'dx3ryl22': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    '44lzwwt8': {
      'en': 'Link is required',
      'pt': 'O link é obrigatório',
    },
    'f2vxoz14': {
      'en': 'Link is required',
      'pt': 'O link é obrigatório',
    },
    '2wpzmh7e': {
      'en': 'Invalid link',
      'pt': 'Link inválido',
    },
    'mm7vuuye': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'yk65tou7': {
      'en': 'Upload photo',
      'pt': 'Carregar foto',
    },
    'hd75ybwm': {
      'en': 'Save Changes',
      'pt': 'Salvar alterações',
    },
    'h6qi3rwz': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // DetailsEvent
  {
    '94e7b0ve': {
      'en': 'Option 1',
      'pt': 'Opção 1',
    },
    'rozhjcrk': {
      'en': 'Edit event',
      'pt': 'Editar evento',
    },
    '3kborjfl': {
      'en': 'Check participants',
      'pt': 'Ver participantes',
    },
    'yz89g2n6': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // userPage
  {
    'bcras04v': {
      'en': 'Events',
      'pt': 'Eventos',
    },
    'kv9equac': {
      'en': 'Settings',
      'pt': 'Configurações',
    },
  },
  // MyEvents
  {
    'tdw4x3ym': {
      'en': 'Registered',
      'pt': 'Registrado',
    },
    'vosm8g7k': {
      'en': 'Created by me',
      'pt': 'Criado por mim',
    },
    'oont51p0': {
      'en': 'My events',
      'pt': 'Meus eventos',
    },
  },
  // CheckParticipants
  {
    'n3b301zr': {
      'en': 'Total of participants',
      'pt': 'Total de participantes',
    },
    'xqwewe04': {
      'en': 'Check event \nparticipants',
      'pt': 'Verificar evento\nparticipantes',
    },
    'it00btju': {
      'en': 'Home',
      'pt': 'Lar',
    },
  },
  // EditAction
  {
    '9f98vih9': {
      'en': 'Edit Event',
      'pt': 'Editar evento',
    },
    '9t0fcwpa': {
      'en':
          'Fill out the information below to change your volunteering initiative',
      'pt':
          'Preencha as informações abaixo para alterar sua iniciativa de voluntariado',
    },
    '4nqkpq6e': {
      'en': 'Action name...',
      'pt': 'Nome da ação...',
    },
    'kj0r8nc7': {
      'en': 'Description...',
      'pt': 'Descrição...',
    },
    't44wflui': {
      'en': 'Select Location',
      'pt': 'Selecione o local',
    },
    'o6tefl9n': {
      'en': 'Current:',
      'pt': 'Atual:',
    },
    'c2so8pex': {
      'en': 'Category',
      'pt': 'Categoria',
    },
    '365ustjs': {
      'en': 'Community',
      'pt': 'Comunidade',
    },
    'cf6dex11': {
      'en': 'Animals',
      'pt': 'Animais',
    },
    '3xw5osfj': {
      'en': 'Nature',
      'pt': 'Natureza',
    },
    'umm3oel8': {
      'en': 'Homeless',
      'pt': 'Morador de rua',
    },
    'vt9a015b': {
      'en': 'Elderly',
      'pt': 'Idoso',
    },
    'p5dydgw7': {
      'en': 'Create Product',
      'pt': 'Criar produto',
    },
    'tu3eom26': {
      'en': 'Duration',
      'pt': 'Duração',
    },
    '8pqwtitx': {
      'en': 'Upload image',
      'pt': 'Enviar Imagem',
    },
    '14dezpo5': {
      'en': 'Save changes',
      'pt': 'Salvar alterações',
    },
    '3olao78x': {
      'en': 'Name is required',
      'pt': 'O nome é obrigatório',
    },
    '1bfjd183': {
      'en': 'Name is required',
      'pt': 'O nome é obrigatório',
    },
    'rb0ch5ft': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    '9l6di66n': {
      'en': 'Description is required',
      'pt': 'A descrição é obrigatória',
    },
    'zafsev1k': {
      'en': 'Description is required',
      'pt': 'A descrição é obrigatória',
    },
    'c4chhdn5': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'lzhqw4pp': {
      'en': 'Location is required',
      'pt': 'A localização é obrigatória',
    },
    '5w6y32gm': {
      'en': 'Location is required',
      'pt': 'A localização é obrigatória',
    },
    'dygeh62d': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'ru18d3kq': {
      'en': 'Duration is required',
      'pt': 'A duração é obrigatória',
    },
    '4xtf1f2o': {
      'en': 'Duration is required',
      'pt': 'A duração é obrigatória',
    },
    '8fa9lq7s': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'f8dzos5d': {
      'en': 'New',
      'pt': 'Novo',
    },
  },
  // Miscellaneous
  {
    '0tygdntb': {
      'en': 'Title',
      'pt': 'Título',
    },
    'oporrhdw': {
      'en': 'Subtitle goes here...',
      'pt': 'A legenda vai aqui...',
    },
    'b81waznq': {
      'en': '',
      'pt': '',
    },
    'xiss79f9': {
      'en': '',
      'pt': '',
    },
    'iqothahy': {
      'en': '',
      'pt': '',
    },
    'ldwc1jfv': {
      'en': '',
      'pt': '',
    },
    'fk8zhysn': {
      'en': '',
      'pt': '',
    },
    'wfvnsct6': {
      'en': '',
      'pt': '',
    },
    'hf674o12': {
      'en': '',
      'pt': '',
    },
    'y7m9h2mv': {
      'en': '',
      'pt': '',
    },
    '5qvfgpp1': {
      'en': '',
      'pt': '',
    },
    'hxwxkvaz': {
      'en': '',
      'pt': '',
    },
    'eovw3z76': {
      'en': '',
      'pt': '',
    },
    'bbjlei06': {
      'en': '',
      'pt': '',
    },
    '9rtqt31x': {
      'en': '',
      'pt': '',
    },
    'zby01rds': {
      'en': '',
      'pt': '',
    },
    '79eswlzp': {
      'en': '',
      'pt': '',
    },
    'wnuy7afp': {
      'en': '',
      'pt': '',
    },
    'zdhrl2vy': {
      'en': '',
      'pt': '',
    },
    '9x5onqih': {
      'en': '',
      'pt': '',
    },
    'm8a16zvf': {
      'en': '',
      'pt': '',
    },
    'rcm6vrmh': {
      'en': '',
      'pt': '',
    },
    'qll4x15m': {
      'en': '',
      'pt': '',
    },
    'g65gpev7': {
      'en': '',
      'pt': '',
    },
    '4pbbtnyr': {
      'en': '',
      'pt': '',
    },
    'e89680ft': {
      'en': '',
      'pt': '',
    },
    'izvw6fj6': {
      'en': '',
      'pt': '',
    },
    'yk831bfg': {
      'en': '',
      'pt': '',
    },
    'pebiupt3': {
      'en': '',
      'pt': '',
    },
  },
].reduce((a, b) => a..addAll(b));
