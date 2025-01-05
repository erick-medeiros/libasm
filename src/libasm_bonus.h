/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm_bonus.h                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: eandre-f <eandre-f@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/01/05 19:38:04 by eandre-f          #+#    #+#             */
/*   Updated: 2025/01/05 19:38:05 by eandre-f         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

typedef struct s_list
{
    void *data;
    struct s_list *next;
} t_list;

int ft_atoi_base(const char *str, int str_base);
void ft_list_push_front(t_list **begin_list, void *data);
int ft_list_size(t_list *begin_list);
void ft_list_sort(t_list **begin_list, int (*cmp)());
void ft_list_remove_if(t_list **begin_list, void *data_ref, int (*cmp)());