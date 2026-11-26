.class public final Lcom/tapjoy/internal/o1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/o1;->a:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tapjoy/internal/o1;->b:Z

    iput-object v0, p0, Lcom/tapjoy/internal/o1;->c:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/tapjoy/internal/o1;->d:Z

    return-void
.end method
