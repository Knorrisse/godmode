class test {
	file { '/tmp/moi':
		content => 'Foo is not bar\n',
	}
}
