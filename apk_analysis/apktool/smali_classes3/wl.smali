.class public final Lwl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwl$c;,
        Lwl$b;,
        Lwl$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Lpr;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lpr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwl;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lwl;->b:Lpr;

    return-void
.end method

.method public static a(Landroid/graphics/ImageDecoder$Source;IILxz5;)Lwl$a;
    .locals 1

    new-instance v0, Ldi2;

    invoke-direct {v0, p1, p2, p3}, Ldi2;-><init>(IILxz5;)V

    invoke-static {p0, v0}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p1, p0, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz p1, :cond_0

    new-instance p1, Lwl$a;

    check-cast p0, Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-direct {p1, p0}, Lwl$a;-><init>(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    return-object p1

    :cond_0
    const-string p1, "Received unexpected drawable type for animated image, failing: "

    invoke-static {p0, p1}, Lav;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
