.class public final Lz97;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf94;


# instance fields
.field public final a:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lll3;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz97;->a:Lll3;

    const-string p1, "ruStore"

    const-string v0, "huawei"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    const-string v3, "android"

    const-string v4, "xiaomi"

    if-eqz v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v4

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    iput-object v2, p0, Lz97;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v3, "HU"

    goto :goto_1

    :cond_2
    invoke-static {p1, v4, v1}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v3, "XI"

    goto :goto_1

    :cond_3
    const-string v0, "play"

    invoke-static {p1, v0, v1}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v3, "GP"

    goto :goto_1

    :cond_4
    invoke-static {p1, p1, v1}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string v3, "RU"

    :cond_5
    :goto_1
    iput-object v3, p0, Lz97;->c:Ljava/lang/String;

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

    iget-object v2, p0, Lz97;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lb37$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "storeName"

    iget-object v2, p0, Lz97;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lb37$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "App-version"

    const-string v2, "2.14.5.79"

    invoke-virtual {v0, v1, v2}, Lb37$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lz97;->a:Lll3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "Test-group-id"

    invoke-virtual {v0, v1, p0}, Lb37$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "application/json"

    const-string v1, "Accept"

    invoke-virtual {v0, v1, p0}, Lb37$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "text/event-stream"

    invoke-virtual {v0, v1, p0}, Lb37$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lb37$a;->a()Lb37;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Lez6;->b(Lb37;)Lz47;

    move-result-object p0

    return-object p0
.end method
