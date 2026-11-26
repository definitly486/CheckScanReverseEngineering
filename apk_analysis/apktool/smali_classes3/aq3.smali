.class public final Laq3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li47;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li47<",
        "Ltp3;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lij0;


# direct methods
.method public constructor <init>(Lij0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laq3;->a:Lij0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILxz5;)Le47;
    .locals 0

    check-cast p1, Ltp3;

    invoke-interface {p1}, Ltp3;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p0, p0, Laq3;->a:Lij0;

    invoke-static {p0, p1}, Lkj0;->b(Lij0;Landroid/graphics/Bitmap;)Lkj0;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/Object;Lxz5;)Z
    .locals 0

    check-cast p1, Ltp3;

    const/4 p0, 0x1

    return p0
.end method
