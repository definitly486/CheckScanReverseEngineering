.class public final Lk59$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le47;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk59;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le47<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk59$a;->b:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-class p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lk59$a;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getSize()I
    .locals 0

    iget-object p0, p0, Lk59$a;->b:Landroid/graphics/Bitmap;

    invoke-static {p0}, Leb9;->c(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public final recycle()V
    .locals 0

    return-void
.end method
