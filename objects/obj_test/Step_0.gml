///Matrix mit zufälligen Werten zwischen -2 & 2 wird erstellt (beide inklusiv)

test_l0 = [2,3];

test_syn0 = scr_random_matrix(2,3);
test_syn1 = scr_random_matrix(3,2);

l1 = scr_tanh_matrix(scr_matrix_dot(test_l0,test_syn0));

l2 = l1


