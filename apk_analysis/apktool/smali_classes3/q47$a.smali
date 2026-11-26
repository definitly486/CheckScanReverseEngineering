.class public final Lq47$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loc5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq47;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Loc5<",
        "Ljava/lang/Integer;",
        "Landroid/content/res/AssetFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq47$a;->a:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public final d(Lif5;)Lnc5;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lif5;",
            ")",
            "Lnc5<",
            "Ljava/lang/Integer;",
            "Landroid/content/res/AssetFileDescriptor;",
            ">;"
        }
    .end annotation

    new-instance v0, Lq47;

    const-class v1, Landroid/net/Uri;

    const-class v2, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1, v1, v2}, Lif5;->a(Ljava/lang/Class;Ljava/lang/Class;)Lnc5;

    move-result-object p1

    iget-object p0, p0, Lq47$a;->a:Landroid/content/res/Resources;

    invoke-direct {v0, p0, p1}, Lq47;-><init>(Landroid/content/res/Resources;Lnc5;)V

    return-object v0
.end method
