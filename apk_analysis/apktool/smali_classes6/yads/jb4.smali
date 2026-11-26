.class public final Lyads/jb4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/nq4;


# instance fields
.field public final a:Lyads/ls4;

.field public final b:Lyads/cb4;

.field public final c:Lyads/qb4;

.field public final d:Lyads/ih6;

.field public final e:Lyads/e56;

.field public final f:Lyads/rr2;

.field public final g:Lyads/fe5;

.field public h:Ljava/lang/String;

.field public i:Z

.field public final j:Lyads/ur2;

.field public final k:Ljava/lang/String;

.field public l:Lyads/rb4;

.field public m:Lyads/ja4;

.field public n:Lyads/ia4;

.field public o:Lyads/mq4;

.field public p:Lyads/rd6;

.field public q:Lyads/hb4;

.field public r:Lyads/ah6;

.field public s:Lyads/qr2;


# direct methods
.method public constructor <init>(Lyads/ls4;Ljava/util/List;I)V
    .locals 9

    .line 115
    new-instance v2, Lyads/cb4;

    invoke-direct {v2, p1}, Lyads/cb4;-><init>(Lyads/ls4;)V

    .line 116
    new-instance v3, Lyads/qb4;

    invoke-direct {v3}, Lyads/qb4;-><init>()V

    .line 117
    new-instance v4, Lyads/ih6;

    invoke-direct {v4}, Lyads/ih6;-><init>()V

    .line 118
    new-instance v5, Lyads/e56;

    invoke-direct {v5}, Lyads/e56;-><init>()V

    .line 119
    new-instance v6, Lyads/rr2;

    invoke-direct {v6}, Lyads/rr2;-><init>()V

    .line 120
    sget-object v0, Lyads/zg5;->l:Lyads/zg5;

    if-nez v0, :cond_1

    .line 121
    sget-object v1, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    :try_start_0
    sget-object v0, Lyads/zg5;->l:Lyads/zg5;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lyads/zg5;

    invoke-direct {v0}, Lyads/zg5;-><init>()V

    .line 124
    sput-object v0, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 125
    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1

    throw p0

    .line 126
    :cond_1
    :goto_2
    iget-object v1, p1, Lyads/ls4;->b:Landroid/content/Context;

    .line 127
    invoke-virtual {v0, v1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v7

    and-int/lit16 p3, p3, 0x80

    if-eqz p3, :cond_2

    .line 128
    sget-object p2, Lkx2;->b:Lkx2;

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v8, p2

    .line 129
    invoke-direct/range {v0 .. v8}, Lyads/jb4;-><init>(Lyads/ls4;Lyads/cb4;Lyads/qb4;Lyads/ih6;Lyads/e56;Lyads/rr2;Lyads/fe5;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lyads/ls4;Lyads/cb4;Lyads/qb4;Lyads/ih6;Lyads/e56;Lyads/rr2;Lyads/fe5;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/jb4;->a:Lyads/ls4;

    iput-object p2, p0, Lyads/jb4;->b:Lyads/cb4;

    iput-object p3, p0, Lyads/jb4;->c:Lyads/qb4;

    iput-object p4, p0, Lyads/jb4;->d:Lyads/ih6;

    iput-object p5, p0, Lyads/jb4;->e:Lyads/e56;

    iput-object p6, p0, Lyads/jb4;->f:Lyads/rr2;

    iput-object p7, p0, Lyads/jb4;->g:Lyads/fe5;

    new-instance p2, Lyads/fd5;

    new-instance p3, Lwq;

    const/4 p4, 0x6

    invoke-direct {p3, p0, p4}, Lwq;-><init>(Ljava/lang/Object;I)V

    const-string p4, "mraid.js"

    invoke-direct {p2, p4, p3}, Lyads/fd5;-><init>(Ljava/lang/String;Lyads/gd5;)V

    new-instance p3, Lyads/ea3;

    new-instance p4, Lyads/ib4;

    invoke-direct {p4, p0}, Lyads/ib4;-><init>(Lyads/jb4;)V

    invoke-direct {p3, p4}, Lyads/ea3;-><init>(Lyads/fa3;)V

    invoke-interface {p8}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p4, Lyads/l50;

    new-instance p5, Ll68;

    const/4 p7, 0x2

    invoke-direct {p5, p7}, Ll68;-><init>(I)V

    invoke-virtual {p5, p2}, Ll68;->a(Ljava/lang/Object;)V

    const/4 p2, 0x0

    new-array p2, p2, [Lyads/da3;

    invoke-interface {p8, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p5, p2}, Ll68;->b(Ljava/lang/Object;)V

    iget-object p2, p5, Ll68;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p5

    new-array p5, p5, [Lyads/da3;

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lyads/da3;

    invoke-direct {p4, p2}, Lyads/l50;-><init>([Lyads/da3;)V

    move-object p2, p4

    :goto_0
    iput-object p2, p3, Lyads/ea3;->c:Lyads/da3;

    sget-object p2, Lyads/ah6;->d:Lyads/ah6;

    iput-object p2, p0, Lyads/jb4;->r:Lyads/ah6;

    invoke-virtual {p1, p3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance p2, Lyads/ur2;

    invoke-direct {p2, p1, p6, p0}, Lyads/ur2;-><init>(Lyads/ls4;Lyads/rr2;Lyads/jb4;)V

    iput-object p2, p0, Lyads/jb4;->j:Lyads/ur2;

    sget p1, Lyads/ya;->b:I

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    iput-object p1, p0, Lyads/jb4;->k:Ljava/lang/String;

    return-void
.end method

.method public static final a(Lyads/jb4;)Ljava/lang/String;
    .locals 0

    .line 179
    iget-object p0, p0, Lyads/jb4;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static final a(Lyads/jb4;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 142
    iput-object p2, p0, Lyads/jb4;->h:Ljava/lang/String;

    .line 143
    iget-object p0, p0, Lyads/jb4;->b:Lyads/cb4;

    .line 144
    iget-object v0, p0, Lyads/cb4;->a:Lyads/ls4;

    .line 145
    invoke-virtual {v0, p1}, Lyads/qs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    const-string v4, "UTF-8"

    const/4 v5, 0x0

    const-string v1, "https://yandex.ru"

    const-string v3, "text/html"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final b(Lyads/jb4;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p2, p0, Lyads/jb4;->h:Ljava/lang/String;

    .line 23
    iget-object p0, p0, Lyads/jb4;->b:Lyads/cb4;

    .line 24
    iget-object p0, p0, Lyads/cb4;->a:Lyads/ls4;

    .line 25
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Lyads/jb4;->i:Z

    .line 178
    iget-object p0, p0, Lyads/jb4;->l:Lyads/rb4;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/rb4;->a()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 140
    iget-object v0, p0, Lyads/jb4;->a:Lyads/ls4;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lyads/jb4;->c:Lyads/qb4;

    iget-object v2, p0, Lyads/jb4;->k:Ljava/lang/String;

    new-instance v3, Lze2;

    invoke-direct {v3, p0, p1}, Lze2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2, v3}, Lyads/qb4;->a(Landroid/content/Context;Ljava/lang/String;Lyads/pb4;)V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2

    .line 180
    iget-object v0, p0, Lyads/jb4;->l:Lyads/rb4;

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lyads/jb4;->g:Lyads/fe5;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 182
    iget-boolean v0, v0, Lyads/fe5;->F0:Z

    if-ne v0, v1, :cond_0

    .line 183
    iget-boolean v0, p0, Lyads/jb4;->i:Z

    if-eqz v0, :cond_2

    .line 184
    :cond_0
    const-string v0, "url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 185
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 186
    iget-object p0, p0, Lyads/jb4;->l:Lyads/rb4;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lyads/rb4;->a(Ljava/lang/String;)V

    return-void

    .line 187
    :cond_1
    new-instance p0, Lyads/fb4;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Mraid open command sent an invalid URL: %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/fb4;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method public final a(Lyads/ob4;Ljava/util/LinkedHashMap;)V
    .locals 2

    iget-object v0, p0, Lyads/jb4;->l:Lyads/rb4;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance p0, Lyads/fb4;

    const-string p1, "Unspecified MRAID Javascript command"

    invoke-direct {p0, p1}, Lyads/fb4;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    iget-object p1, p0, Lyads/jb4;->q:Lyads/hb4;

    if-eqz p1, :cond_0

    check-cast p1, Ls5;

    iget-object p1, p1, Ls5;->c:Ljava/lang/Object;

    check-cast p1, Lyads/vb4;

    invoke-static {p1}, Lyads/ks3;->a(Lyads/vb4;)V

    :cond_0
    iget-object p1, p0, Lyads/jb4;->g:Lyads/fe5;

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lyads/fe5;->D0:Z

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lyads/jb4;->a:Lyads/ls4;

    invoke-virtual {p0}, Lyads/ls4;->a()V

    return-void

    :pswitch_2
    const-string p1, "shouldUseCustomClose"

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object p0, p0, Lyads/jb4;->o:Lyads/mq4;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lyads/mq4;->a(Z)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lyads/jb4;->m:Lyads/ja4;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lyads/ja4;->a()V

    return-void

    :pswitch_4
    invoke-virtual {p0, p2}, Lyads/jb4;->a(Ljava/util/Map;)V

    return-void

    :pswitch_5
    sget-object p1, Lyads/ah6;->c:Lyads/ah6;

    iget-object p2, p0, Lyads/jb4;->r:Lyads/ah6;

    if-ne p1, p2, :cond_1

    sget-object p1, Lyads/ah6;->e:Lyads/ah6;

    iput-object p1, p0, Lyads/jb4;->r:Lyads/ah6;

    iget-object p2, p0, Lyads/jb4;->b:Lyads/cb4;

    new-array v0, v0, [Lyads/lq3;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lyads/cb4;->a([Lyads/lq3;)V

    iget-object p0, p0, Lyads/jb4;->o:Lyads/mq4;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lyads/mq4;->c()V

    return-void

    :pswitch_6
    iget-object p0, p0, Lyads/jb4;->n:Lyads/ia4;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lyads/ia4;->b()V

    return-void

    :pswitch_7
    iget-object p0, p0, Lyads/jb4;->n:Lyads/ia4;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lyads/ia4;->e()V

    return-void

    :pswitch_8
    iget-object p0, p0, Lyads/jb4;->p:Lyads/rd6;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lyads/rd6;->onVideoComplete()V

    :cond_1
    return-void

    :cond_2
    new-instance p0, Lyads/fb4;

    const-string p1, "Invalid state to execute this command"

    invoke-direct {p0, p1}, Lyads/fb4;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lyads/vb4;Ljava/util/Map;)V
    .locals 7

    .line 147
    new-instance v0, Lyads/vt5;

    iget-object v1, p0, Lyads/jb4;->a:Lyads/ls4;

    invoke-direct {v0, v1}, Lyads/vt5;-><init>(Landroid/view/View;)V

    .line 148
    iget-object v2, p0, Lyads/jb4;->d:Lyads/ih6;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lyads/ih6;->a(Landroid/view/View;)Z

    move-result v1

    .line 149
    new-instance v2, Lyads/mh6;

    invoke-direct {v2, v1}, Lyads/mh6;-><init>(Z)V

    .line 150
    iget-object v1, p0, Lyads/jb4;->f:Lyads/rr2;

    iget-object v3, p0, Lyads/jb4;->a:Lyads/ls4;

    invoke-virtual {v1, v3}, Lyads/rr2;->a(Landroid/view/View;)Lyads/qr2;

    move-result-object v1

    .line 151
    iget v3, v1, Lyads/qr2;->a:I

    .line 152
    iget-object v1, v1, Lyads/qr2;->b:Landroid/graphics/RectF;

    .line 153
    new-instance v4, Lyads/sr2;

    invoke-direct {v4, v3, v1}, Lyads/sr2;-><init>(ILandroid/graphics/RectF;)V

    .line 154
    sget-object v1, Lyads/ah6;->c:Lyads/ah6;

    iput-object v1, p0, Lyads/jb4;->r:Lyads/ah6;

    .line 155
    iget-object v3, p0, Lyads/jb4;->b:Lyads/cb4;

    const/4 v5, 0x4

    new-array v5, v5, [Lyads/lq3;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v4, v5, v1

    const/4 v1, 0x3

    aput-object v0, v5, v1

    invoke-virtual {v3, v5}, Lyads/cb4;->a([Lyads/lq3;)V

    .line 156
    iget-object v0, p0, Lyads/jb4;->b:Lyads/cb4;

    .line 157
    const-string v1, "notifyReadyEvent();"

    invoke-virtual {v0, v1}, Lyads/cb4;->b(Ljava/lang/String;)V

    .line 158
    iget-object p0, p0, Lyads/jb4;->l:Lyads/rb4;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lyads/rb4;->a(Lyads/vb4;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 5

    .line 159
    new-instance v0, Lyads/mh6;

    invoke-direct {v0, p1}, Lyads/mh6;-><init>(Z)V

    .line 160
    iget-object v1, p0, Lyads/jb4;->b:Lyads/cb4;

    const/4 v2, 0x1

    new-array v3, v2, [Lyads/lq3;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v3}, Lyads/cb4;->a([Lyads/lq3;)V

    .line 161
    iget-object v0, p0, Lyads/jb4;->j:Lyads/ur2;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 162
    iget-object p0, v0, Lyads/ur2;->e:Lmb4;

    if-eqz p0, :cond_0

    .line 163
    invoke-interface {p0}, Lmb4;->isActive()Z

    move-result p0

    if-ne p0, v2, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    iget-object p0, v0, Lyads/ur2;->b:Ly22;

    new-instance p1, Lyads/tr2;

    invoke-direct {p1, v0, v1}, Lyads/tr2;-><init>(Lyads/ur2;Le02;)V

    const/4 v2, 0x3

    .line 165
    invoke-static {p0, v1, v1, p1, v2}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p0

    .line 166
    iput-object p0, v0, Lyads/ur2;->e:Lmb4;

    return-void

    .line 167
    :cond_1
    iget-object p1, v0, Lyads/ur2;->e:Lmb4;

    if-eqz p1, :cond_2

    .line 168
    invoke-interface {p1, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 169
    :cond_2
    iput-object v1, v0, Lyads/ur2;->e:Lmb4;

    .line 170
    iget-object p1, p0, Lyads/jb4;->f:Lyads/rr2;

    iget-object v0, p0, Lyads/jb4;->a:Lyads/ls4;

    invoke-virtual {p1, v0}, Lyads/rr2;->a(Landroid/view/View;)Lyads/qr2;

    move-result-object p1

    .line 171
    iget-object v0, p0, Lyads/jb4;->s:Lyads/qr2;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 172
    iput-object p1, p0, Lyads/jb4;->s:Lyads/qr2;

    .line 173
    iget v0, p1, Lyads/qr2;->a:I

    .line 174
    iget-object p1, p1, Lyads/qr2;->b:Landroid/graphics/RectF;

    .line 175
    new-instance v1, Lyads/sr2;

    invoke-direct {v1, v0, p1}, Lyads/sr2;-><init>(ILandroid/graphics/RectF;)V

    .line 176
    iget-object p0, p0, Lyads/jb4;->b:Lyads/cb4;

    new-array p1, v2, [Lyads/lq3;

    aput-object v1, p1, v4

    invoke-virtual {p0, p1}, Lyads/cb4;->a([Lyads/lq3;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lyads/jb4;->a:Lyads/ls4;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lyads/jb4;->c:Lyads/qb4;

    iget-object v2, p0, Lyads/jb4;->k:Ljava/lang/String;

    new-instance v3, Lbf2;

    invoke-direct {v3, p0, p1}, Lbf2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2, v3}, Lyads/qb4;->a(Landroid/content/Context;Ljava/lang/String;Lyads/pb4;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lyads/jb4;->e:Lyads/e56;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lyads/e56;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mraid"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "mobileads"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "url"

    invoke-static {v0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lyads/jb4;->a(Ljava/util/Map;)V

    return-void

    :cond_1
    :goto_0
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget-object v0, Lyads/ob4;->c:Lyads/nb4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lyads/nb4;->a(Ljava/lang/String;)Lyads/ob4;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lyads/jb4;->a(Lyads/ob4;Ljava/util/LinkedHashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "Unknown exception"

    :cond_3
    iget-object v1, p0, Lyads/jb4;->b:Lyads/cb4;

    invoke-virtual {v1, v0, p1}, Lyads/cb4;->a(Lyads/ob4;Ljava/lang/String;)V

    :goto_2
    iget-object p0, p0, Lyads/jb4;->b:Lyads/cb4;

    invoke-virtual {p0, v0}, Lyads/cb4;->a(Lyads/ob4;)V

    return-void

    :cond_4
    iget-object p0, p0, Lyads/jb4;->b:Lyads/cb4;

    sget-object p1, Lyads/ob4;->d:Lyads/ob4;

    const-string v0, "Mraid command sent an invalid URL"

    invoke-virtual {p0, p1, v0}, Lyads/cb4;->a(Lyads/ob4;Ljava/lang/String;)V

    return-void
.end method
