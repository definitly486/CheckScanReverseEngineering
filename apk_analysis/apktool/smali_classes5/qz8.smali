.class public final Lqz8;
.super Lj72;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj72<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lc75$a;


# direct methods
.method public constructor <init>(Lc75$a;)V
    .locals 0

    iput-object p1, p0, Lqz8;->b:Lc75$a;

    invoke-direct {p0}, Lj72;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lqz8;->b:Lc75$a;

    invoke-virtual {p0}, Lc75$a;->a()V

    return-void
.end method

.method public final onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lqz8;->b:Lc75$a;

    invoke-virtual {p0}, Lc75$a;->a()V

    return-void
.end method

.method public final onResourceReady(Ljava/lang/Object;Lk29;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p0, p0, Lqz8;->b:Lc75$a;

    invoke-virtual {p0, p1}, Lc75$a;->b(Ljava/lang/Object;)V

    return-void
.end method
