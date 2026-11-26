.class public abstract Lyads/wq3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 2

    .line 191
    sget-object v0, Lyads/uq3;->b:Lnl3;

    .line 192
    sget-object v1, Lyads/uq3;->a:Lyads/l66;

    .line 193
    invoke-static {p1, p0, v0, v1}, Lyads/wq3;->a(Lorg/json/JSONObject;Ljava/lang/String;Lnl3;Lyads/l66;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Lnl3;Lyads/l66;)Ljava/lang/Object;
    .locals 2

    .line 194
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 195
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_3

    .line 196
    :try_start_0
    invoke-interface {p2, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p2, :cond_2

    .line 197
    :try_start_1
    invoke-interface {p3, p2}, Lyads/l66;->a(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object p2

    .line 198
    :cond_1
    invoke-static {p0, p1, p2}, Lyads/gt4;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p3

    throw p3
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .line 199
    :catch_0
    invoke-static {p0, p1, p2}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0

    .line 200
    :cond_2
    invoke-static {p0, p1, v0}, Lyads/gt4;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p2

    .line 201
    invoke-static {p0, p1, v0, p2}, Lyads/gt4;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)Lyads/ft4;

    move-result-object p0

    throw p0

    .line 202
    :catch_2
    invoke-static {p0, p1, v0}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0

    .line 203
    :cond_3
    invoke-static {p1, p0}, Lyads/gt4;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;

    move-result-object p0

    throw p0
.end method

.method public static a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 167
    sget-object v0, Lyads/uq3;->b:Lnl3;

    .line 168
    sget-object v1, Lyads/uq3;->a:Lyads/l66;

    .line 169
    invoke-static {p0, p1, p2, v0, v1}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lnl3;Lyads/l66;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;
    .locals 1

    .line 170
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 171
    :try_start_0
    invoke-interface {p3}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/ln0;

    invoke-interface {p3, p0, v0}, Lyads/ln0;->a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 172
    invoke-static {p1, p2, p0}, Lyads/gt4;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0

    :catch_0
    move-exception p0

    .line 173
    invoke-static {p1, p2, p0}, Lyads/gt4;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Exception;)Lyads/ft4;

    move-result-object p0

    throw p0

    .line 174
    :cond_1
    invoke-static {p2, p1}, Lyads/gt4;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;

    move-result-object p0

    throw p0
.end method

.method public static a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lnl3;Lyads/l66;)Ljava/lang/Object;
    .locals 3

    .line 204
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 205
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move-object v0, v2

    :cond_0
    if-nez v0, :cond_1

    return-object v2

    .line 206
    :cond_1
    :try_start_0
    invoke-interface {p3, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p3, :cond_2

    .line 207
    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object p0

    invoke-static {p1, p2, v0}, Lyads/gt4;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p1

    invoke-interface {p0, p1}, Lyads/et4;->b(Ljava/lang/Exception;)V

    return-object v2

    .line 208
    :cond_2
    :try_start_1
    invoke-interface {p4, p3}, Lyads/l66;->a(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_3

    .line 209
    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object p3

    invoke-static {p1, p2, v0}, Lyads/gt4;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p4

    invoke-interface {p3, p4}, Lyads/et4;->b(Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :cond_3
    return-object p3

    .line 210
    :catch_0
    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object p0

    invoke-static {p1, p2, v0}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p1

    invoke-interface {p0, p1}, Lyads/et4;->b(Ljava/lang/Exception;)V

    return-object v2

    :catch_1
    move-exception p3

    .line 211
    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object p0

    invoke-static {p1, p2, v0, p3}, Lyads/gt4;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)Lyads/ft4;

    move-result-object p1

    invoke-interface {p0, p1}, Lyads/et4;->b(Ljava/lang/Exception;)V

    return-object v2

    .line 212
    :catch_2
    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object p0

    invoke-static {p1, p2, v0}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p1

    invoke-interface {p0, p1}, Lyads/et4;->b(Ljava/lang/Exception;)V

    return-object v2
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    .line 213
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 214
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-eqz v1, :cond_1

    .line 215
    :try_start_0
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v2

    .line 216
    invoke-static {p0, v0, v1, v2}, Lyads/gt4;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)Lyads/ft4;

    move-result-object p0

    throw p0

    .line 217
    :catch_1
    invoke-static {p0, v0, v1}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0

    .line 218
    :cond_1
    invoke-static {v0, p0}, Lyads/gt4;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;

    move-result-object p0

    throw p0
.end method

.method public static a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lyads/st3;)Ljava/util/List;
    .locals 6

    .line 175
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 176
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 177
    sget-object p3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 178
    :try_start_0
    invoke-interface {p4, p3}, Lyads/st3;->a(Ljava/util/List;)Z

    move-result p4

    if-nez p4, :cond_0

    .line 179
    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object p4

    invoke-static {p1, p2, p3}, Lyads/gt4;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object v0

    invoke-interface {p4, v0}, Lyads/et4;->b(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p3

    .line 180
    :catch_0
    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object p0

    invoke-static {p1, p2, p3}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p1

    invoke-interface {p0, p1}, Lyads/et4;->b(Ljava/lang/Exception;)V

    return-object p3

    .line 181
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_6

    .line 182
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 183
    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v4, v5, :cond_3

    :cond_2
    const/4 v4, 0x0

    :cond_3
    if-nez v4, :cond_4

    goto :goto_1

    .line 184
    :cond_4
    :try_start_1
    invoke-interface {p3}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/ln0;

    invoke-interface {v5, p0, v4}, Lyads/ln0;->a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v4, :cond_5

    goto :goto_1

    .line 185
    :cond_5
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_1
    move-exception v4

    .line 186
    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v5

    invoke-static {v0, p2, v3, v4}, Lyads/gt4;->a(Lorg/json/JSONArray;Ljava/lang/String;ILjava/lang/Exception;)Lyads/ft4;

    move-result-object v4

    invoke-interface {v5, v4}, Lyads/et4;->b(Ljava/lang/Exception;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    :cond_6
    :try_start_2
    invoke-interface {p4, v2}, Lyads/st3;->a(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-object v2

    .line 188
    :cond_7
    invoke-static {p1, p2, v2}, Lyads/gt4;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .line 189
    :catch_2
    invoke-static {p1, p2, v2}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0

    .line 190
    :cond_8
    invoke-static {p2, p1}, Lyads/gt4;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;

    move-result-object p0

    throw p0
.end method

.method public static a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lnl3;Lyads/st3;Lyads/l66;)Ljava/util/List;
    .locals 8

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_2

    sget-object p3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :try_start_0
    invoke-interface {p4, p3}, Lyads/st3;->a(Ljava/util/List;)Z

    move-result p4

    if-nez p4, :cond_1

    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object p4

    invoke-static {p1, p2, p3}, Lyads/gt4;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p5

    invoke-interface {p4, p5}, Lyads/et4;->b(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_1
    return-object p3

    :catch_0
    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object p0

    invoke-static {p1, p2, p3}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p1

    invoke-interface {p0, p1}, Lyads/et4;->b(Ljava/lang/Exception;)V

    return-object v1

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_7

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v5, v6, :cond_3

    move-object v5, v1

    :cond_3
    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-interface {p3, v5}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    :try_start_2
    invoke-interface {p5, v5}, Lyads/l66;->a(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v6

    invoke-static {v0, p2, v4, v5}, Lyads/gt4;->a(Lorg/json/JSONArray;Ljava/lang/String;ILjava/lang/Object;)Lyads/ft4;

    move-result-object v7

    invoke-interface {v6, v7}, Lyads/et4;->b(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :cond_6
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_1
    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v6

    invoke-static {v0, p2, v4, v5}, Lyads/gt4;->b(Lorg/json/JSONArray;Ljava/lang/String;ILjava/lang/Object;)Lyads/ft4;

    move-result-object v5

    invoke-interface {v6, v5}, Lyads/et4;->b(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_2
    move-exception v6

    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v7

    invoke-static {v0, p2, v4, v5, v6}, Lyads/gt4;->a(Lorg/json/JSONArray;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Exception;)Lyads/ft4;

    move-result-object v5

    invoke-interface {v7, v5}, Lyads/et4;->b(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_3
    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v6

    invoke-static {v0, p2, v4, v5}, Lyads/gt4;->b(Lorg/json/JSONArray;Ljava/lang/String;ILjava/lang/Object;)Lyads/ft4;

    move-result-object v5

    invoke-interface {v6, v5}, Lyads/et4;->b(Ljava/lang/Exception;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    :try_start_3
    invoke-interface {p4, v3}, Lyads/st3;->a(Ljava/util/List;)Z

    move-result p3

    if-nez p3, :cond_8

    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object p3

    invoke-static {p1, p2, v3}, Lyads/gt4;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p4

    invoke-interface {p3, p4}, Lyads/et4;->b(Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_4

    :goto_2
    return-object v1

    :cond_8
    return-object v3

    :catch_4
    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object p0

    invoke-static {p1, p2, v3}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p1

    invoke-interface {p0, p1}, Lyads/et4;->b(Ljava/lang/Exception;)V

    return-object v1
.end method

.method public static b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;
    .locals 5

    .line 133
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 134
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-nez p1, :cond_0

    .line 135
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 136
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_5

    .line 137
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 138
    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v3, v4, :cond_2

    :cond_1
    const/4 v3, 0x0

    :cond_2
    if-nez v3, :cond_3

    goto :goto_1

    .line 139
    :cond_3
    :try_start_0
    invoke-interface {p3}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/ln0;

    invoke-interface {v4, p0, v3}, Lyads/ln0;->a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_4

    goto :goto_1

    .line 140
    :cond_4
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v3

    .line 141
    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v4

    invoke-static {v0, p2, v2, v3}, Lyads/gt4;->a(Lorg/json/JSONArray;Ljava/lang/String;ILjava/lang/Exception;)Lyads/ft4;

    move-result-object v3

    invoke-interface {v4, v3}, Lyads/et4;->b(Ljava/lang/Exception;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v1

    .line 142
    :cond_6
    invoke-static {p2, p1}, Lyads/gt4;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;

    move-result-object p0

    throw p0
.end method

.method public static b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lyads/st3;)Ljava/util/List;
    .locals 7

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_2

    sget-object p3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :try_start_0
    invoke-interface {p4, p3}, Lyads/st3;->a(Ljava/util/List;)Z

    move-result p4

    if-nez p4, :cond_1

    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object p4

    invoke-static {p1, p2, p3}, Lyads/gt4;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object v0

    invoke-interface {p4, v0}, Lyads/et4;->b(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_1
    return-object p3

    :catch_0
    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object p0

    invoke-static {p1, p2, p3}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p1

    invoke-interface {p0, p1}, Lyads/et4;->b(Ljava/lang/Exception;)V

    return-object v1

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_7

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_3

    sget-object v6, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v5, v6, :cond_4

    :cond_3
    move-object v5, v1

    :cond_4
    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    :try_start_1
    invoke-interface {p3}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyads/ln0;

    invoke-interface {v6, p0, v5}, Lyads/ln0;->a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v5, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_1
    move-exception v5

    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v6

    invoke-static {v0, p2, v4, v5}, Lyads/gt4;->a(Lorg/json/JSONArray;Ljava/lang/String;ILjava/lang/Exception;)Lyads/ft4;

    move-result-object v5

    invoke-interface {v6, v5}, Lyads/et4;->b(Ljava/lang/Exception;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    :try_start_2
    invoke-interface {p4, v3}, Lyads/st3;->a(Ljava/util/List;)Z

    move-result p3

    if-nez p3, :cond_8

    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object p3

    invoke-static {p1, p2, v3}, Lyads/gt4;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p4

    invoke-interface {p3, p4}, Lyads/et4;->b(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    return-object v1

    :cond_8
    return-object v3

    :catch_2
    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object p0

    invoke-static {p1, p2, v3}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p1

    invoke-interface {p0, p1}, Lyads/et4;->b(Ljava/lang/Exception;)V

    return-object v1
.end method

.method public static c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {p3}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/ln0;

    invoke-interface {p3, p0, v0}, Lyads/ln0;->a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p3

    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object p0

    invoke-static {p1, p2, p3}, Lyads/gt4;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Exception;)Lyads/ft4;

    move-result-object p1

    invoke-interface {p0, p1}, Lyads/et4;->b(Ljava/lang/Exception;)V

    return-object v1
.end method

.method public static d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;
    .locals 6

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_1

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_6

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2

    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v4, v5, :cond_3

    :cond_2
    move-object v4, v0

    :cond_3
    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    :try_start_0
    invoke-interface {p3}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/ln0;

    invoke-interface {v5, p0, v4}, Lyads/ln0;->a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v5

    invoke-static {p1, p2, v3, v4}, Lyads/gt4;->a(Lorg/json/JSONArray;Ljava/lang/String;ILjava/lang/Exception;)Lyads/ft4;

    move-result-object v4

    invoke-interface {v5, v4}, Lyads/et4;->b(Ljava/lang/Exception;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return-object v2
.end method
