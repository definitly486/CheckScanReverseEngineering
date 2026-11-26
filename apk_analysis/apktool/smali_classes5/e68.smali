.class public final Le68;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo37;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo37<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Loz7$a;


# direct methods
.method public constructor <init>(Loz7$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le68;->a:Loz7$a;

    return-void
.end method


# virtual methods
.method public final onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lwk8;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lwk8<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    new-instance p1, Lb68$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lb68$a;-><init>(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Le68;->a:Loz7$a;

    invoke-virtual {p0, p1}, Loz7$a;->onSuccess(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lwk8;Ly82;Z)Z
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    new-instance p2, Lb68$a;

    invoke-direct {p2, p1}, Lb68$a;-><init>(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Le68;->a:Loz7$a;

    invoke-virtual {p0, p2}, Loz7$a;->onSuccess(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method
