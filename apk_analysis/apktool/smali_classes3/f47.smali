.class public final Lf47;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li47;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li47<",
        "Landroid/net/Uri;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lk47;

.field public final b:Lij0;


# direct methods
.method public constructor <init>(Lk47;Lij0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf47;->a:Lk47;

    iput-object p2, p0, Lf47;->b:Lij0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILxz5;)Le47;
    .locals 1

    check-cast p1, Landroid/net/Uri;

    iget-object v0, p0, Lf47;->a:Lk47;

    invoke-virtual {v0, p1, p4}, Lk47;->c(Landroid/net/Uri;Lxz5;)Le47;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p1, Lns2;

    invoke-virtual {p1}, Lns2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lf47;->b:Lij0;

    invoke-static {p0, p1, p2, p3}, Los2;->a(Lij0;Landroid/graphics/drawable/Drawable;II)Lkj0;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/Object;Lxz5;)Z
    .locals 0

    check-cast p1, Landroid/net/Uri;

    const-string p0, "android.resource"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
