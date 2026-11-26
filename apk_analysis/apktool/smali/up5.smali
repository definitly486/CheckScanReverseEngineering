.class public final Lup5;
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
.field public final synthetic b:Lvp5;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lvp5;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lup5;->b:Lvp5;

    iput p2, p0, Lup5;->c:I

    iput-object p3, p0, Lup5;->d:Ljava/lang/String;

    iput-object p4, p0, Lup5;->e:Ljava/lang/String;

    iput-object p5, p0, Lup5;->f:Ljava/lang/String;

    iput-object p6, p0, Lup5;->g:Ljava/util/Map;

    iput-object p7, p0, Lup5;->h:Ljava/lang/String;

    invoke-direct {p0}, Lj72;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public final onResourceReady(Ljava/lang/Object;Lk29;)V
    .locals 8

    move-object v4, p1

    check-cast v4, Landroid/graphics/Bitmap;

    iget-object v6, p0, Lup5;->g:Ljava/util/Map;

    iget-object v7, p0, Lup5;->h:Ljava/lang/String;

    iget-object v0, p0, Lup5;->b:Lvp5;

    iget v1, p0, Lup5;->c:I

    iget-object v2, p0, Lup5;->d:Ljava/lang/String;

    iget-object v3, p0, Lup5;->e:Ljava/lang/String;

    iget-object v5, p0, Lup5;->f:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lvp5;->a(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method
