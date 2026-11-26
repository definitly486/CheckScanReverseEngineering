.class public final Lkz2$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkz2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lxq3;

.field public final b:Lxq3;

.field public final c:Lxq3;

.field public final d:Lxq3;

.field public final e:Lkz2;

.field public final f:Lkz2;

.field public final g:Lf53$c;


# direct methods
.method public constructor <init>(Lxq3;Lxq3;Lxq3;Lxq3;Lkz2;Lkz2;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkz2$b$a;

    invoke-direct {v0, p0}, Lkz2$b$a;-><init>(Lkz2$b;)V

    const/16 v1, 0x96

    invoke-static {v1, v0}, Lf53;->a(ILf53$b;)Lf53$c;

    move-result-object v0

    iput-object v0, p0, Lkz2$b;->g:Lf53$c;

    iput-object p1, p0, Lkz2$b;->a:Lxq3;

    iput-object p2, p0, Lkz2$b;->b:Lxq3;

    iput-object p3, p0, Lkz2$b;->c:Lxq3;

    iput-object p4, p0, Lkz2$b;->d:Lxq3;

    iput-object p5, p0, Lkz2$b;->e:Lkz2;

    iput-object p6, p0, Lkz2$b;->f:Lkz2;

    return-void
.end method
