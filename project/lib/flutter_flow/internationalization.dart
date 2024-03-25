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
    'bmw95ssl': {
      'en': 'Name is required',
      'pt': 'O nome é obrigatório',
    },
    'zp33tu3j': {
      'en': 'Name is required',
      'pt': 'O nome é obrigatório',
    },
    '4tvvqsbk': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'btsyyjk2': {
      'en': 'Last Name is required',
      'pt': 'O sobrenome é obrigatório',
    },
    '4jypmut9': {
      'en': 'Last Name is required',
      'pt': 'O sobrenome é obrigatório',
    },
    '1xorqqzx': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    '6zv1jdpi': {
      'en': 'Invalid phone number',
      'pt': 'Número de telefone inválido',
    },
    'm3aa909i': {
      'en': 'Invalid phone number',
      'pt': '',
    },
    'mpuonrz1': {
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
    'lobgfxsc': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    '9hyn1rzh': {
      'en': 'Course is required',
      'pt': 'O curso é obrigatório',
    },
    'kyow2i7k': {
      'en': 'Course is required',
      'pt': 'O curso é obrigatório',
    },
    'zzr6yzbm': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'lqehfxmv': {
      'en': 'Email is required',
      'pt': 'O e-mail é obrigatório',
    },
    'eg2m0gl1': {
      'en': 'Invalid Email',
      'pt': 'E-mail inválido',
    },
    'zk2oipii': {
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
    'd4wc5x7g': {
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
    'rtyk034q': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
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
      'pt': '',
    },
    'n05kjgp0': {
      'en': 'Password is required',
      'pt': '',
    },
    'k4a93bd3': {
      'en': 'Please choose an option from the dropdown',
      'pt': '',
    },
    'fwpgeumd': {
      'en': 'Sign In',
      'pt': 'Entrar',
    },
    '765e4uco': {
      'en': 'Forgot Password',
      'pt': 'Esqueceu sua senha',
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
  // CreateAccountOrg
  {
    'xcnxabfh': {
      'en': 'Create an account',
      'pt': 'Crie a sua conta aqui',
    },
    'xcn1f9vg': {
      'en': 'Let\'s get started by filling out the form below.',
      'pt': 'Vamos começar preenchendo o formulário abaixo.',
    },
    '5hy8kh5u': {
      'en': 'Organization Name',
      'pt': 'Nome da organização',
    },
    'cc7h03xc': {
      'en': 'Phone number',
      'pt': 'Número de telefone',
    },
    'srjhgzz8': {
      'en': 'Link',
      'pt': 'Link',
    },
    'pwovdfxi': {
      'en': 'Email',
      'pt': 'E-mail',
    },
    '6cy64hap': {
      'en': 'Password',
      'pt': 'Senha',
    },
    'vfomuoye': {
      'en': 'Confirm Password',
      'pt': 'Confirme sua senha',
    },
    '71l4pu5i': {
      'en': 'Create Account',
      'pt': 'Criar uma conta',
    },
    'v1npkedj': {
      'en': 'Already have an account? ',
      'pt': 'já tem uma conta?',
    },
    'gmdikm5p': {
      'en': 'Sign In here',
      'pt': 'Faça login aqui',
    },
    'ux6sz6i2': {
      'en': 'Are you a student? ',
      'pt': 'Você é estudante?',
    },
    's9mefp7r': {
      'en': 'Register here',
      'pt': 'Registre-se aqui',
    },
    'q256yh4m': {
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
      'en': 'Settings',
      'pt': 'Configurações',
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
      'en': 'Eldery',
      'pt': 'Idoso',
    },
    'bj4r4e3k': {
      'en': 'Create Product',
      'pt': 'Criar produto',
    },
    'cux2jakl': {
      'en': 'Location',
      'pt': 'Localização',
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
      'en': 'Create Product',
      'pt': 'Criar produto',
    },
    'j5w2dtro': {
      'en': 'Name is required',
      'pt': '',
    },
    'cz0vx98s': {
      'en': 'Name is required',
      'pt': '',
    },
    'e4qsbipq': {
      'en': 'Please choose an option from the dropdown',
      'pt': '',
    },
    'l4mi0cud': {
      'en': 'Description is required',
      'pt': '',
    },
    'unywo9lb': {
      'en': 'Description is required',
      'pt': '',
    },
    'j0f0ow8l': {
      'en': 'Please choose an option from the dropdown',
      'pt': '',
    },
    '2zrur2fe': {
      'en': 'Location is required',
      'pt': '',
    },
    'xuhdvoop': {
      'en': 'Location is required',
      'pt': '',
    },
    '25immin9': {
      'en': 'Please choose an option from the dropdown',
      'pt': '',
    },
    'vzkgtubo': {
      'en': 'Duration is required',
      'pt': '',
    },
    'rsp7cy33': {
      'en': 'Duration is required',
      'pt': '',
    },
    'hf708xga': {
      'en': 'Please choose an option from the dropdown',
      'pt': '',
    },
    '73xim358': {
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
