.class public final Lpb5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lav6;


# instance fields
.field public final a:Lla3;


# direct methods
.method public constructor <init>(Lla3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpb5;->a:Lla3;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)Lwy0;
    .locals 2

    new-instance v0, Lob5;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lob5;-><init>(Landroid/graphics/Bitmap;Lpb5;Le02;)V

    invoke-static {v0}, Ls0;->a(Lbm3;)Lwy0;

    move-result-object p0

    return-object p0
.end method
