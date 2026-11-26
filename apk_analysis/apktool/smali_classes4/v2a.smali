.class public final Lv2a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lxda;

.field public b:Lcom/my/target/e3;

.field public final c:Lcom/my/target/n0;

.field public d:Lcom/my/target/x0;

.field public e:Z

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Lxda;Lcom/my/target/n0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv2a;->e:Z

    iput-boolean v0, p0, Lv2a;->f:Z

    iput-boolean v0, p0, Lv2a;->g:Z

    iput-object p1, p0, Lv2a;->a:Lxda;

    iput-object p2, p0, Lv2a;->c:Lcom/my/target/n0;

    return-void
.end method
