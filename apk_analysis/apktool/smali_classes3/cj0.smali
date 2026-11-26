.class public final Lcj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu83;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcj0$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcj0;->a:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final a(Lpz2;)Ljava/lang/Object;
    .locals 2

    new-instance p1, Lk14;

    new-instance v0, Ldj0;

    iget-object p0, p0, Lcj0;->a:Landroid/graphics/Bitmap;

    invoke-direct {v0, p0}, Ldj0;-><init>(Landroid/graphics/Bitmap;)V

    sget-object p0, Lz82;->MEMORY:Lz82;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lk14;-><init>(Lx04;ZLz82;)V

    return-object p1
.end method
