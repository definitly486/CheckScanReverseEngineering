.class public abstract Lyads/qq3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .line 110
    sget-object v4, Lyads/uq3;->b:Lnl3;

    .line 111
    sget-object v5, Lyads/uq3;->a:Lyads/l66;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 112
    invoke-static/range {v0 .. v5}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lnl3;Lyads/l66;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;
    .locals 2

    .line 120
    iget-boolean v0, p1, Lyads/zw2;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-static {p0, p2, p3, p5}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 122
    :cond_0
    iget v0, p1, Lyads/zw2;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 123
    check-cast p1, Lyads/yw2;

    iget-object p1, p1, Lyads/yw2;->c:Ljava/lang/Object;

    check-cast p1, Lyads/xq3;

    invoke-interface {p4}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lyads/qv5;

    .line 124
    :try_start_0
    invoke-interface {p4, p0, p1, p2}, Lyads/qv5;->a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lyads/ft4; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 125
    sget-object p1, Lyads/gt4;->a:Lyads/ft4;

    .line 126
    invoke-static {p2, p3, p0}, Lyads/gt4;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Exception;)Lyads/ft4;

    move-result-object p0

    .line 127
    throw p0

    :cond_1
    const/4 p4, 0x3

    if-ne v0, p4, :cond_2

    .line 128
    check-cast p1, Lyads/xw2;

    iget-object p1, p1, Lyads/xw2;->c:Ljava/lang/String;

    .line 129
    invoke-static {p0, p2, p1, p5}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 130
    :cond_2
    invoke-static {p3, p2}, Lyads/gt4;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;

    move-result-object p0

    throw p0
.end method

.method public static a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lnl3;Lyads/l66;)Ljava/lang/Object;
    .locals 1

    .line 131
    iget-boolean v0, p1, Lyads/zw2;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-static {p0, p2, p3, p4, p5}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lnl3;Lyads/l66;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 133
    :cond_0
    iget p3, p1, Lyads/zw2;->a:I

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 134
    check-cast p1, Lyads/yw2;

    iget-object p0, p1, Lyads/yw2;->c:Ljava/lang/Object;

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p3, v0, :cond_2

    .line 135
    check-cast p1, Lyads/xw2;

    iget-object p1, p1, Lyads/xw2;->c:Ljava/lang/String;

    .line 136
    invoke-static {p0, p2, p1, p4, p5}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lnl3;Lyads/l66;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 107
    sget-object v0, Lyads/uq3;->b:Lnl3;

    .line 108
    sget-object v1, Lyads/uq3;->a:Lyads/l66;

    .line 109
    invoke-static {p0, p1, p2, v0, v1}, Lyads/qq3;->a(Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lnl3;Lyads/l66;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lnl3;Lyads/l66;)Ljava/lang/Object;
    .locals 2

    .line 113
    iget-boolean v0, p0, Lyads/zw2;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {p1, p2, p3, p4}, Lyads/wq3;->a(Lorg/json/JSONObject;Ljava/lang/String;Lnl3;Lyads/l66;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 115
    :cond_0
    iget v0, p0, Lyads/zw2;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 116
    check-cast p0, Lyads/yw2;

    iget-object p0, p0, Lyads/yw2;->c:Ljava/lang/Object;

    return-object p0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 117
    check-cast p0, Lyads/xw2;

    iget-object p0, p0, Lyads/xw2;->c:Ljava/lang/String;

    .line 118
    invoke-static {p1, p0, p3, p4}, Lyads/wq3;->a(Lorg/json/JSONObject;Ljava/lang/String;Lnl3;Lyads/l66;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 119
    :cond_2
    invoke-static {p2, p1}, Lyads/gt4;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;

    move-result-object p0

    throw p0
.end method

.method public static a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Lcl4;Lcl4;Lyads/st3;)Ljava/util/List;
    .locals 6

    iget-boolean v0, p1, Lyads/zw2;->b:Z

    const-string v1, "color_map"

    if-eqz v0, :cond_0

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p2, v1, p4, p5}, Lyads/wq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lyads/st3;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p1, Lyads/zw2;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_4

    check-cast p1, Lyads/yw2;

    iget-object p1, p1, Lyads/yw2;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p3}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/qv5;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p4, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/xq3;

    :try_start_0
    invoke-interface {p3, p0, v4, p2}, Lyads/qv5;->a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Lyads/ft4; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v5

    invoke-interface {v5, v4}, Lyads/et4;->b(Ljava/lang/Exception;)V

    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p5, v0}, Lyads/st3;->a(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object p0

    invoke-static {p2, v1, v0}, Lyads/gt4;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p1

    invoke-interface {p0, p1}, Lyads/et4;->b(Ljava/lang/Exception;)V

    return-object v3

    :cond_3
    return-object v0

    :cond_4
    const/4 p3, 0x3

    if-ne v0, p3, :cond_5

    check-cast p1, Lyads/xw2;

    iget-object p1, p1, Lyads/xw2;->c:Ljava/lang/String;

    invoke-static {p0, p2, p1, p4, p5}, Lyads/wq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lyads/st3;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v3
.end method

.method public static a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;Lyads/st3;)Ljava/util/List;
    .locals 4

    .line 189
    iget-boolean v0, p1, Lyads/zw2;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {p0, p2, p3, p5, p6}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lyads/st3;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 191
    :cond_0
    iget v0, p1, Lyads/zw2;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 192
    check-cast p1, Lyads/yw2;

    iget-object p1, p1, Lyads/yw2;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 193
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p5

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p5}, Ljava/util/ArrayList;-><init>(I)V

    .line 195
    invoke-interface {p4}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lyads/qv5;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p5, :cond_2

    .line 196
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/xq3;

    .line 197
    :try_start_0
    invoke-interface {p4, p0, v2, p2}, Lyads/qv5;->a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Lyads/ft4; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 198
    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v3

    invoke-interface {v3, v2}, Lyads/et4;->b(Ljava/lang/Exception;)V

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    .line 199
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    :cond_2
    invoke-interface {p6, v0}, Lyads/st3;->a(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v0

    .line 201
    :cond_3
    invoke-static {p2, p3, v0}, Lyads/gt4;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0

    :cond_4
    const/4 p4, 0x3

    if-ne v0, p4, :cond_5

    .line 202
    check-cast p1, Lyads/xw2;

    iget-object p1, p1, Lyads/xw2;->c:Ljava/lang/String;

    .line 203
    invoke-static {p0, p2, p1, p5, p6}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lyads/st3;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 204
    :cond_5
    invoke-static {p3, p2}, Lyads/gt4;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;

    move-result-object p0

    throw p0
.end method

.method public static a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Lnl3;Lyads/st3;)Ljava/util/List;
    .locals 6

    .line 205
    sget-object v5, Lyads/uq3;->a:Lyads/l66;

    .line 206
    iget-boolean v0, p1, Lyads/zw2;->b:Z

    if-eqz v0, :cond_0

    const-string v2, "transition_triggers"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    .line 207
    invoke-static/range {v0 .. v5}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lnl3;Lyads/st3;Lyads/l66;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    .line 208
    iget p0, p1, Lyads/zw2;->a:I

    const/4 p2, 0x2

    if-ne p0, p2, :cond_1

    .line 209
    check-cast p1, Lyads/yw2;

    iget-object p0, p1, Lyads/yw2;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_1
    const/4 p2, 0x3

    if-ne p0, p2, :cond_2

    .line 210
    check-cast p1, Lyads/xw2;

    iget-object v2, p1, Lyads/xw2;->c:Ljava/lang/String;

    .line 211
    invoke-static/range {v0 .. v5}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lnl3;Lyads/st3;Lyads/l66;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/l66;)Lyads/as2;
    .locals 6

    sget-object v3, Lyads/w36;->c:Lyads/u36;

    .line 155
    iget-boolean v0, p1, Lyads/zw2;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    sget-object p1, Lyads/oq3;->a:Lyads/y50;

    .line 157
    sget-object v4, Lyads/uq3;->b:Lnl3;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v5, p4

    .line 158
    invoke-static/range {v0 .. v5}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v5, p4

    .line 159
    iget p0, p1, Lyads/zw2;->a:I

    const/4 p2, 0x2

    if-ne p0, p2, :cond_1

    .line 160
    check-cast p1, Lyads/yw2;

    iget-object p0, p1, Lyads/yw2;->c:Ljava/lang/Object;

    check-cast p0, Lyads/as2;

    return-object p0

    :cond_1
    const/4 p2, 0x3

    if-ne p0, p2, :cond_2

    .line 161
    check-cast p1, Lyads/xw2;

    iget-object v2, p1, Lyads/xw2;->c:Ljava/lang/String;

    .line 162
    sget-object p0, Lyads/oq3;->a:Lyads/y50;

    .line 163
    sget-object v4, Lyads/uq3;->b:Lnl3;

    .line 164
    invoke-static/range {v0 .. v5}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p0

    return-object p0

    .line 165
    :cond_2
    invoke-static {v2, v1}, Lyads/gt4;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;

    move-result-object p0

    throw p0
.end method

.method public static a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;
    .locals 2

    .line 137
    iget-boolean v0, p1, Lyads/zw2;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-static {p0, p2, p3, p4}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p0

    return-object p0

    .line 139
    :cond_0
    iget v0, p1, Lyads/zw2;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 140
    check-cast p1, Lyads/yw2;

    iget-object p0, p1, Lyads/yw2;->c:Ljava/lang/Object;

    check-cast p0, Lyads/as2;

    return-object p0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 141
    check-cast p1, Lyads/xw2;

    iget-object p1, p1, Lyads/xw2;->c:Ljava/lang/String;

    .line 142
    invoke-static {p0, p2, p1, p4}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p0

    return-object p0

    .line 143
    :cond_2
    invoke-static {p3, p2}, Lyads/gt4;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;

    move-result-object p0

    throw p0
.end method

.method public static a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;
    .locals 6

    .line 144
    iget-boolean v0, p1, Lyads/zw2;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    sget-object p1, Lyads/oq3;->a:Lyads/y50;

    .line 146
    sget-object v5, Lyads/uq3;->a:Lyads/l66;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 147
    invoke-static/range {v0 .. v5}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 148
    iget p0, p1, Lyads/zw2;->a:I

    const/4 p2, 0x2

    if-ne p0, p2, :cond_1

    .line 149
    check-cast p1, Lyads/yw2;

    iget-object p0, p1, Lyads/yw2;->c:Ljava/lang/Object;

    check-cast p0, Lyads/as2;

    return-object p0

    :cond_1
    const/4 p2, 0x3

    if-ne p0, p2, :cond_2

    .line 150
    check-cast p1, Lyads/xw2;

    iget-object v2, p1, Lyads/xw2;->c:Ljava/lang/String;

    .line 151
    sget-object p0, Lyads/oq3;->a:Lyads/y50;

    .line 152
    sget-object v5, Lyads/uq3;->a:Lyads/l66;

    .line 153
    invoke-static/range {v0 .. v5}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p0

    return-object p0

    .line 154
    :cond_2
    invoke-static {v2, v1}, Lyads/gt4;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;

    move-result-object p0

    throw p0
.end method

.method public static a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;
    .locals 7

    .line 173
    iget-boolean v0, p1, Lyads/zw2;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    sget-object p1, Lyads/oq3;->a:Lyads/y50;

    .line 175
    sget-object v5, Lyads/uq3;->a:Lyads/l66;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v6, p6

    .line 176
    invoke-static/range {v0 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move-object v3, p4

    move-object v4, p5

    move-object v6, p6

    .line 177
    iget p0, p1, Lyads/zw2;->a:I

    const/4 p2, 0x2

    if-ne p0, p2, :cond_1

    .line 178
    check-cast p1, Lyads/yw2;

    iget-object p0, p1, Lyads/yw2;->c:Ljava/lang/Object;

    check-cast p0, Lyads/as2;

    return-object p0

    :cond_1
    const/4 p2, 0x3

    if-ne p0, p2, :cond_2

    .line 179
    check-cast p1, Lyads/xw2;

    iget-object v2, p1, Lyads/xw2;->c:Ljava/lang/String;

    .line 180
    sget-object p0, Lyads/oq3;->a:Lyads/y50;

    .line 181
    sget-object v5, Lyads/uq3;->a:Lyads/l66;

    .line 182
    invoke-static/range {v0 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;
    .locals 7

    .line 166
    iget-boolean v0, p1, Lyads/zw2;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 167
    invoke-static/range {v1 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v2, p2

    move-object v3, p3

    move-object p3, p4

    move-object p4, p5

    move-object p5, p6

    .line 168
    iget p2, p1, Lyads/zw2;->a:I

    const/4 p6, 0x2

    if-ne p2, p6, :cond_1

    .line 169
    check-cast p1, Lyads/yw2;

    iget-object p0, p1, Lyads/yw2;->c:Ljava/lang/Object;

    check-cast p0, Lyads/as2;

    return-object p0

    :cond_1
    const/4 p6, 0x3

    if-ne p2, p6, :cond_2

    .line 170
    check-cast p1, Lyads/xw2;

    iget-object p2, p1, Lyads/xw2;->c:Ljava/lang/String;

    move-object p1, v2

    .line 171
    invoke-static/range {p0 .. p5}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p0

    return-object p0

    .line 172
    :cond_2
    invoke-static {v3, v2}, Lyads/gt4;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;

    move-result-object p0

    throw p0
.end method

.method public static a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;
    .locals 8

    .line 183
    iget-boolean v0, p1, Lyads/zw2;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 184
    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v2, p2

    move-object p3, p4

    move-object p4, p5

    move-object p5, p6

    move-object p6, p7

    .line 185
    iget p2, p1, Lyads/zw2;->a:I

    const/4 p7, 0x2

    if-ne p2, p7, :cond_1

    .line 186
    check-cast p1, Lyads/yw2;

    iget-object p0, p1, Lyads/yw2;->c:Ljava/lang/Object;

    check-cast p0, Lyads/as2;

    return-object p0

    :cond_1
    const/4 p7, 0x3

    if-ne p2, p7, :cond_2

    .line 187
    check-cast p1, Lyads/xw2;

    iget-object p2, p1, Lyads/xw2;->c:Ljava/lang/String;

    move-object p1, v2

    .line 188
    invoke-static/range {p0 .. p6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p1, Lyads/zw2;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p2, p3, p5}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget p3, p1, Lyads/zw2;->a:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p3, v0, :cond_1

    check-cast p1, Lyads/yw2;

    iget-object p1, p1, Lyads/yw2;->c:Ljava/lang/Object;

    check-cast p1, Lyads/xq3;

    invoke-interface {p4}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/qv5;

    :try_start_0
    invoke-interface {p3, p0, p1, p2}, Lyads/qv5;->a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lyads/ft4; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object p0

    invoke-interface {p0, p1}, Lyads/et4;->b(Ljava/lang/Exception;)V

    return-object v1

    :cond_1
    const/4 p4, 0x3

    if-ne p3, p4, :cond_2

    check-cast p1, Lyads/xw2;

    iget-object p1, p1, Lyads/xw2;->c:Ljava/lang/String;

    invoke-static {p0, p2, p1, p5}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;
    .locals 1

    .line 60
    iget-boolean v0, p1, Lyads/zw2;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget-object p1, Lyads/uq3;->b:Lnl3;

    .line 62
    invoke-static {p0, p2, p3, p4, p1}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p0

    return-object p0

    .line 63
    :cond_0
    iget p3, p1, Lyads/zw2;->a:I

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 64
    check-cast p1, Lyads/yw2;

    iget-object p0, p1, Lyads/yw2;->c:Ljava/lang/Object;

    check-cast p0, Lyads/as2;

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p3, v0, :cond_2

    .line 65
    check-cast p1, Lyads/xw2;

    iget-object p1, p1, Lyads/xw2;->c:Ljava/lang/String;

    .line 66
    sget-object p3, Lyads/uq3;->b:Lnl3;

    .line 67
    invoke-static {p0, p2, p1, p4, p3}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;
    .locals 1

    .line 68
    iget-boolean v0, p1, Lyads/zw2;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {p0, p2, p3, p4, p5}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p0

    return-object p0

    .line 70
    :cond_0
    iget p3, p1, Lyads/zw2;->a:I

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 71
    check-cast p1, Lyads/yw2;

    iget-object p0, p1, Lyads/yw2;->c:Ljava/lang/Object;

    check-cast p0, Lyads/as2;

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p3, v0, :cond_2

    .line 72
    check-cast p1, Lyads/xw2;

    iget-object p1, p1, Lyads/xw2;->c:Ljava/lang/String;

    .line 73
    invoke-static {p0, p2, p1, p4, p5}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;
    .locals 7

    .line 74
    iget-boolean v0, p1, Lyads/zw2;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v5, p6

    const/4 p6, 0x0

    move-object p1, p2

    move-object p2, p3

    move-object p3, p4

    move-object p4, p5

    move-object p5, v5

    .line 75
    invoke-static/range {p0 .. p6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v1, p2

    move-object p3, p4

    move-object p4, p5

    move-object v5, p6

    .line 76
    iget p2, p1, Lyads/zw2;->a:I

    const/4 p5, 0x2

    if-ne p2, p5, :cond_1

    .line 77
    check-cast p1, Lyads/yw2;

    iget-object p0, p1, Lyads/yw2;->c:Ljava/lang/Object;

    check-cast p0, Lyads/as2;

    return-object p0

    :cond_1
    const/4 p5, 0x3

    if-ne p2, p5, :cond_2

    .line 78
    check-cast p1, Lyads/xw2;

    iget-object v2, p1, Lyads/xw2;->c:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    .line 79
    invoke-static/range {v0 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;
    .locals 4

    iget-boolean v0, p1, Lyads/zw2;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p2, p3, p5}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget p3, p1, Lyads/zw2;->a:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p3, v0, :cond_3

    check-cast p1, Lyads/yw2;

    iget-object p1, p1, Lyads/yw2;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p4}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lyads/qv5;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/xq3;

    :try_start_0
    invoke-interface {p4, p0, v2, p2}, Lyads/qv5;->a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Lyads/ft4; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v3

    invoke-interface {v3, v2}, Lyads/et4;->b(Ljava/lang/Exception;)V

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p5

    :cond_3
    const/4 p4, 0x3

    if-ne p3, p4, :cond_4

    check-cast p1, Lyads/xw2;

    iget-object p1, p1, Lyads/xw2;->c:Ljava/lang/String;

    invoke-static {p0, p2, p1, p5}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v1
.end method
