.class public final Lyads/t66;
.super Lyads/u66;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lyads/u66;-><init>()V

    iput-object p2, p0, Lyads/t66;->b:Ljava/lang/String;

    iput-object p1, p0, Lyads/t66;->c:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 4
    iget-object p0, p0, Lyads/t66;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Landroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p1}, Lyads/t66;->b(Landroid/net/Uri;)V

    return-void
.end method

.method public final b(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lyads/t66;->c:Landroid/net/Uri;

    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lyads/t66;->c:Landroid/net/Uri;

    invoke-virtual {p0, p0}, Lyads/u66;->a(Lyads/u66;)V

    return-void
.end method

.method public final c()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lyads/t66;->c:Landroid/net/Uri;

    return-object p0
.end method
