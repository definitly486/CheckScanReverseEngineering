.class public final Lyads/wf4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/wf4;->a:Landroid/content/res/Resources;

    return-void
.end method

.method public static final a(Lyads/b05;Lyads/rd3;Lyads/wf4;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lyads/b05;->a(Lyads/rd3;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p1, p2, Lyads/wf4;->a:Landroid/content/res/Resources;

    .line 22
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2, p1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Lyads/rd3;Lyads/b05;)Lyads/i80;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lyads/i80;

    new-instance v1, Lfga;

    invoke-direct {v1, p2, p1, p0}, Lfga;-><init>(Lyads/b05;Lyads/rd3;Lyads/wf4;)V

    iget-object p0, p1, Lyads/rd3;->d:Ljava/lang/String;

    iget p2, p1, Lyads/rd3;->a:I

    iget p1, p1, Lyads/rd3;->b:I

    invoke-direct {v0, v1, p0, p2, p1}, Lyads/i80;-><init>(Lll3;Ljava/lang/String;II)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
