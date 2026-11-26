.class public final Lyads/gj4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lyads/ij4;


# direct methods
.method public constructor <init>(Lyads/ij4;)V
    .locals 0

    iput-object p1, p0, Lyads/gj4;->a:Lyads/ij4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lyads/i66;
    .locals 2

    iget-object p0, p0, Lyads/gj4;->a:Lyads/ij4;

    iget-object v0, p0, Lyads/ij4;->d:Lyads/ch4;

    iget-object p0, p0, Lyads/ij4;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lyads/ch4;->a(Landroid/content/Context;IZ)Lyads/i66;

    move-result-object p0

    return-object p0
.end method

.method public final b(I)Lyads/i66;
    .locals 2

    iget-object p0, p0, Lyads/gj4;->a:Lyads/ij4;

    iget-object v0, p0, Lyads/ij4;->d:Lyads/ch4;

    iget-object p0, p0, Lyads/ij4;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lyads/ch4;->a(Landroid/content/Context;IZ)Lyads/i66;

    move-result-object p0

    return-object p0
.end method
