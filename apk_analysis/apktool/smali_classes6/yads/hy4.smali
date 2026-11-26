.class public final Lyads/hy4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/h16;

.field public final b:Lyads/l00;

.field public final c:Lyads/j1;

.field public final d:Lyads/cy4;

.field public final e:Lyads/in0;

.field public final f:Lyads/a00;


# direct methods
.method public constructor <init>(Lyads/e4;Lyads/bf5;Lyads/d9;Lyads/h16;Lyads/l00;)V
    .locals 3

    new-instance v0, Lyads/j1;

    invoke-direct {v0}, Lyads/j1;-><init>()V

    new-instance v1, Lyads/cy4;

    invoke-direct {v1}, Lyads/cy4;-><init>()V

    new-instance v2, Lyads/in0;

    invoke-direct {v2, p1, p2, p3}, Lyads/in0;-><init>(Lyads/e4;Lyads/bf5;Lyads/d9;)V

    new-instance p1, Lyads/a00;

    invoke-direct {p1}, Lyads/a00;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lyads/hy4;->a:Lyads/h16;

    iput-object p5, p0, Lyads/hy4;->b:Lyads/l00;

    iput-object v0, p0, Lyads/hy4;->c:Lyads/j1;

    iput-object v1, p0, Lyads/hy4;->d:Lyads/cy4;

    iput-object v2, p0, Lyads/hy4;->e:Lyads/in0;

    iput-object p1, p0, Lyads/hy4;->f:Lyads/a00;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/util/List;Lf02;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p3, Lyads/gy4;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lyads/gy4;

    iget v1, v0, Lyads/gy4;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/gy4;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/gy4;

    invoke-direct {v0, p0, p3}, Lyads/gy4;-><init>(Lyads/hy4;Lf02;)V

    :goto_0
    iget-object p3, v0, Lyads/gy4;->e:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lyads/gy4;->g:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lyads/gy4;->d:Lyads/by4;

    iget-object p2, v0, Lyads/gy4;->c:Ljava/util/Iterator;

    iget-object v2, v0, Lyads/gy4;->b:Landroid/content/Context;

    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    invoke-static {}, Lyads/s1;->a()Landroid/app/Activity;

    move-result-object p3

    if-eqz p3, :cond_3

    move-object p1, p3

    goto :goto_3

    :cond_3
    iget-object p3, p0, Lyads/hy4;->c:Lyads/j1;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p3, 0x0

    move-object v2, p1

    :goto_1
    instance-of v5, v2, Landroid/content/ContextWrapper;

    if-eqz v5, :cond_5

    add-int/lit8 v5, p3, 0x1

    const/16 v6, 0xa

    if-ge p3, v6, :cond_5

    instance-of p3, v2, Landroid/app/Activity;

    if-eqz p3, :cond_4

    check-cast v2, Landroid/app/Activity;

    goto :goto_2

    :cond_4
    check-cast v2, Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    move p3, v5

    goto :goto_1

    :cond_5
    move-object v2, v3

    :goto_2
    if-eqz v2, :cond_6

    move-object p1, v2

    :cond_6
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v2, p1

    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/by4;

    iput-object v2, v0, Lyads/gy4;->b:Landroid/content/Context;

    iput-object p2, v0, Lyads/gy4;->c:Ljava/util/Iterator;

    iput-object p1, v0, Lyads/gy4;->d:Lyads/by4;

    iput v4, v0, Lyads/gy4;->g:I

    invoke-virtual {p0, v2, p1, v0}, Lyads/hy4;->a(Landroid/content/Context;Lyads/by4;Lf02;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_8

    return-object v1

    :cond_8
    :goto_4
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_7

    return-object p1

    :cond_9
    return-object v3
.end method

.method public final a(Landroid/content/Context;Lyads/by4;Lf02;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p3, Lyads/fy4;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lyads/fy4;

    iget v1, v0, Lyads/fy4;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/fy4;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/fy4;

    invoke-direct {v0, p0, p3}, Lyads/fy4;-><init>(Lyads/hy4;Lf02;)V

    :goto_0
    iget-object p3, v0, Lyads/fy4;->d:Ljava/lang/Object;

    .line 159
    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    .line 160
    iget v2, v0, Lyads/fy4;->f:I

    sget-object v3, Lmx2;->b:Lmx2;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lyads/fy4;->c:Lyads/uz;

    iget-object p2, v0, Lyads/fy4;->b:Lyads/by4;

    :try_start_0
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    .line 161
    new-instance p3, Lyads/uz;

    invoke-direct {p3, p2}, Lyads/uz;-><init>(Lyads/by4;)V

    .line 162
    :try_start_1
    iget-object v2, p0, Lyads/hy4;->d:Lyads/cy4;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lyads/cy4;->a(Landroid/content/Context;Lyads/by4;)Landroid/content/Intent;

    move-result-object v2

    .line 163
    iget-object v5, p2, Lyads/by4;->e:Lyads/ui0;

    .line 164
    sget-object v6, Lyads/ui0;->d:Lyads/ui0;

    if-ne v5, v6, :cond_3

    .line 165
    iget-object v5, p0, Lyads/hy4;->e:Lyads/in0;

    iput-object p2, v0, Lyads/fy4;->b:Lyads/by4;

    iput-object p3, v0, Lyads/fy4;->c:Lyads/uz;

    iput v4, v0, Lyads/fy4;->f:I

    invoke-virtual {v5, p1, v2, v0}, Lyads/in0;->a(Landroid/content/Context;Landroid/content/Intent;Lyads/fy4;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 166
    :cond_3
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    move-object p1, p3

    .line 167
    :goto_1
    :try_start_2
    iget-object p3, p0, Lyads/hy4;->a:Lyads/h16;

    .line 168
    iget-object v0, p2, Lyads/by4;->f:Ljava/util/List;

    .line 169
    invoke-virtual {p3, v0, p1, v3}, Lyads/h16;->a(Ljava/util/List;Lyads/zz;Ljava/util/Map;)V

    .line 170
    invoke-virtual {p0, p2, p1, v4}, Lyads/hy4;->a(Lyads/by4;Lyads/uz;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 171
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :catch_0
    move-object p3, p1

    .line 172
    :catch_1
    iget-object p1, p0, Lyads/hy4;->a:Lyads/h16;

    .line 173
    iget-object v0, p2, Lyads/by4;->g:Ljava/util/List;

    .line 174
    invoke-virtual {p1, v0, p3, v3}, Lyads/h16;->a(Ljava/util/List;Lyads/zz;Ljava/util/Map;)V

    const/4 p1, 0x0

    .line 175
    invoke-virtual {p0, p2, p3, p1}, Lyads/hy4;->a(Lyads/by4;Lyads/uz;Z)V

    .line 176
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final a(Lyads/by4;Lyads/uz;Z)V
    .locals 3

    .line 141
    iget-object v0, p0, Lyads/hy4;->f:Lyads/a00;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lyads/a00;->a(Lyads/zz;)Ljava/lang/String;

    move-result-object p2

    .line 142
    new-instance v0, Luz4;

    invoke-direct {v0}, Luz4;-><init>()V

    .line 143
    iget-object v1, p1, Lyads/by4;->b:Ljava/lang/String;

    .line 144
    invoke-static {v1}, Lyads/a56;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "click_url"

    invoke-virtual {v0, v2, v1}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v1, "deeplink_package_name"

    .line 146
    iget-object p1, p1, Lyads/by4;->a:Ljava/lang/String;

    .line 147
    invoke-virtual {v0, v1, p1}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "deeplink_success"

    invoke-virtual {v0, v1, p1}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 149
    const-string p1, "click_destination"

    invoke-virtual {v0, p1, p2}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_0
    invoke-virtual {v0}, Luz4;->b()Luz4;

    move-result-object p1

    .line 151
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 152
    iget-object p0, p0, Lyads/hy4;->b:Lyads/l00;

    sget-object p1, Lyads/e75;->t:Lyads/e75;

    .line 153
    invoke-virtual {p0, p1, p2}, Lyads/l00;->a(Lyads/e75;Ljava/util/Map;)Lyads/g75;

    move-result-object p2

    .line 154
    iget-object p3, p0, Lyads/l00;->d:Lyads/q84;

    invoke-virtual {p3, p2}, Lyads/q84;->a(Lyads/g75;)V

    .line 155
    iget-object p0, p0, Lyads/l00;->f:Lyads/le;

    .line 156
    iget-object p2, p2, Lyads/g75;->b:Ljava/util/Map;

    .line 157
    sget-object p3, Lyads/c75;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0, p1, p2, p3, v0}, Lyads/le;->a(Lyads/e75;Ljava/util/Map;Ljava/lang/String;Lyads/j5;)V

    return-void
.end method
