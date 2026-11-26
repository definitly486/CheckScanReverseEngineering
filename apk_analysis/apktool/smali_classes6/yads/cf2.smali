.class public interface abstract Lyads/cf2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/bf2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/bf2;

    invoke-direct {v0}, Lyads/bf2;-><init>()V

    sput-object v0, Lyads/cf2;->a:Lyads/bf2;

    return-void
.end method


# virtual methods
.method public abstract a()Landroid/graphics/Typeface;
.end method

.method public a(I)Landroid/graphics/Typeface;
    .locals 2

    const/16 v0, 0x15e

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    invoke-interface {p0}, Lyads/cf2;->a()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v1, 0x1c2

    if-lt p1, v0, :cond_1

    if-ge p1, v1, :cond_1

    invoke-interface {p0}, Lyads/cf2;->d()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_1
    if-lt p1, v1, :cond_2

    const/16 v0, 0x258

    if-ge p1, v0, :cond_2

    invoke-interface {p0}, Lyads/cf2;->c()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-interface {p0}, Lyads/cf2;->b()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public abstract b()Landroid/graphics/Typeface;
.end method

.method public abstract c()Landroid/graphics/Typeface;
.end method

.method public abstract d()Landroid/graphics/Typeface;
.end method
