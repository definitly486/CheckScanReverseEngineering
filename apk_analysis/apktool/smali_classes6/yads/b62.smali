.class public final Lyads/b62;
.super Lyads/yh1;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lyads/uu5;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Lyads/uu5;IILyads/vq0;)V
    .locals 0

    iput-object p1, p0, Lyads/b62;->a:Lyads/uu5;

    iput p2, p0, Lyads/b62;->b:I

    iput p3, p0, Lyads/b62;->c:I

    invoke-direct {p0, p4}, Lyads/yh1;-><init>(Lyads/vq0;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 12
    iget-object p0, p0, Lyads/b62;->a:Lyads/uu5;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lyads/nr;->setTabDelimiter(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method public final a(Lyads/uw;)V
    .locals 2

    iget-object v0, p0, Lyads/b62;->a:Lyads/uu5;

    iget-object p1, p1, Lyads/uw;->a:Landroid/graphics/Bitmap;

    iget v1, p0, Lyads/b62;->b:I

    iget p0, p0, Lyads/b62;->c:I

    invoke-virtual {v0, p1, v1, p0}, Lyads/nr;->setTabDelimiter(Landroid/graphics/Bitmap;II)V

    return-void
.end method
