.class public abstract Lsu6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loc5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsu6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Loc5<",
        "Landroid/net/Uri;",
        "TDataT;>;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TDataT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsu6$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lsu6$a;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final d(Lif5;)Lnc5;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lif5;",
            ")",
            "Lnc5<",
            "Landroid/net/Uri;",
            "TDataT;>;"
        }
    .end annotation

    new-instance v0, Lsu6;

    const-class v1, Ljava/io/File;

    iget-object v2, p0, Lsu6$a;->b:Ljava/lang/Class;

    invoke-virtual {p1, v1, v2}, Lif5;->a(Ljava/lang/Class;Ljava/lang/Class;)Lnc5;

    move-result-object v1

    const-class v3, Landroid/net/Uri;

    invoke-virtual {p1, v3, v2}, Lif5;->a(Ljava/lang/Class;Ljava/lang/Class;)Lnc5;

    move-result-object p1

    iget-object p0, p0, Lsu6$a;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1, v2}, Lsu6;-><init>(Landroid/content/Context;Lnc5;Lnc5;Ljava/lang/Class;)V

    return-object v0
.end method
