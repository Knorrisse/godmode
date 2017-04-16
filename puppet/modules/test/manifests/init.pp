class test {
	file { '/tmp/moi':
		content => 'Foo is not bar\n',
	}
	package { 'cowsay':
		ensure => 'installed',
	}
}
