.class public final Lev3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf94;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ruStore"

    const-string v1, "huawei"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "HUAWEI"

    goto :goto_0

    :cond_0
    const-string v3, "ANDROID"

    :goto_0
    iput-object v3, p0, Lev3;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "HU"

    goto :goto_1

    :cond_1
    const-string v1, "xiaomi"

    invoke-static {v0, v1, v2}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "XI"

    goto :goto_1

    :cond_2
    const-string v1, "play"

    invoke-static {v0, v1, v2}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "GP"

    goto :goto_1

    :cond_3
    invoke-static {v0, v0, v2}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "RU"

    goto :goto_1

    :cond_4
    const-string v0, "android"

    :goto_1
    iput-object v0, p0, Lev3;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lez6;)Lz47;
    .locals 4

    iget-object v0, p1, Lez6;->e:Lb37;

    iget-object v1, v0, Lb37;->a:Lfz3;

    iget-object v1, v1, Lfz3;->d:Ljava/lang/String;

    const-string v2, "checkscan.org"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lb37;->a()Lb37$a;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-TZ-OFFSET"

    invoke-virtual {v0, v2, v1}, Lb37$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Os"

    iget-object v2, p0, Lev3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lb37$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "store"

    iget-object p0, p0, Lev3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lb37$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "App-version"

    const-string v1, "2.14.5.79"

    invoke-virtual {v0, p0, v1}, Lb37$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lx17;->a:Lx17$a$a$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "0"

    const-string v1, "Test-group-id"

    invoke-virtual {v0, v1, p0}, Lb37$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lb37$a;->a()Lb37;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Lez6;->b(Lb37;)Lz47;

    move-result-object p0

    return-object p0
.end method
