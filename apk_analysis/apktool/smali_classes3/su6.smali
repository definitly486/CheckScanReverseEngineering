.class public final Lsu6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnc5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsu6$d;,
        Lsu6$a;,
        Lsu6$b;,
        Lsu6$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnc5<",
        "Landroid/net/Uri;",
        "TDataT;>;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lnc5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnc5<",
            "Ljava/io/File;",
            "TDataT;>;"
        }
    .end annotation
.end field

.field public final c:Lnc5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnc5<",
            "Landroid/net/Uri;",
            "TDataT;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnc5;Lnc5;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lnc5<",
            "Ljava/io/File;",
            "TDataT;>;",
            "Lnc5<",
            "Landroid/net/Uri;",
            "TDataT;>;",
            "Ljava/lang/Class<",
            "TDataT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lsu6;->a:Landroid/content/Context;

    iput-object p2, p0, Lsu6;->b:Lnc5;

    iput-object p3, p0, Lsu6;->c:Lnc5;

    iput-object p4, p0, Lsu6;->d:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILxz5;)Lnc5$a;
    .locals 10

    move-object v4, p1

    check-cast v4, Landroid/net/Uri;

    new-instance p1, Lnc5$a;

    new-instance v9, Loq5;

    invoke-direct {v9, v4}, Loq5;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lsu6$d;

    iget-object v3, p0, Lsu6;->c:Lnc5;

    iget-object v8, p0, Lsu6;->d:Ljava/lang/Class;

    iget-object v1, p0, Lsu6;->a:Landroid/content/Context;

    iget-object v2, p0, Lsu6;->b:Lnc5;

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lsu6$d;-><init>(Landroid/content/Context;Lnc5;Lnc5;Landroid/net/Uri;IILxz5;Ljava/lang/Class;)V

    invoke-direct {p1, v9, v0}, Lnc5$a;-><init>(Lkf4;Ls82;)V

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Landroid/net/Uri;

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p0, v0, :cond_0

    invoke-static {p1}, Lf95;->b(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
