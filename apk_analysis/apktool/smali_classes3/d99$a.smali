.class public final Ld99$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loc5;
.implements Ld99$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld99;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Loc5<",
        "Landroid/net/Uri;",
        "Landroid/content/res/AssetFileDescriptor;",
        ">;",
        "Ld99$c<",
        "Landroid/content/res/AssetFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field public final b:Z


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld99$a;->a:Landroid/content/ContentResolver;

    iput-boolean p2, p0, Ld99$a;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Ls82;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ls82<",
            "Landroid/content/res/AssetFileDescriptor;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcs;

    iget-object v1, p0, Ld99$a;->a:Landroid/content/ContentResolver;

    iget-boolean p0, p0, Ld99$a;->b:Z

    invoke-direct {v0, v1, p1, p0}, Lcu4;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Z)V

    return-object v0
.end method

.method public final d(Lif5;)Lnc5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lif5;",
            ")",
            "Lnc5<",
            "Landroid/net/Uri;",
            "Landroid/content/res/AssetFileDescriptor;",
            ">;"
        }
    .end annotation

    new-instance p1, Ld99;

    invoke-direct {p1, p0}, Ld99;-><init>(Ld99$c;)V

    return-object p1
.end method
