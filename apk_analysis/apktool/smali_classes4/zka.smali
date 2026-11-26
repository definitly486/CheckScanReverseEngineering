.class public final Lzka;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field public static final a:Lzka;

.field public static final b:Lxka;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzka;

    invoke-direct {v0}, Landroid/graphics/drawable/Drawable;-><init>()V

    sput-object v0, Lzka;->a:Lzka;

    new-instance v0, Lxka;

    invoke-direct {v0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    sput-object v0, Lzka;->b:Lxka;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    sget-object p0, Lzka;->b:Lxka;

    return-object p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
