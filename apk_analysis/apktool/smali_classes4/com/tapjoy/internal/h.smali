.class public final Lcom/tapjoy/internal/h;
.super Lcom/tapjoy/internal/f;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field public static final synthetic f:I


# instance fields
.field public final b:Ljava/util/HashMap;

.field public final c:Lcom/tapjoy/internal/t2;

.field public d:Z

.field public final e:Lcom/tapjoy/internal/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/h;

    invoke-direct {v0}, Lcom/tapjoy/internal/h;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/f;->a:Lcom/tapjoy/internal/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/f;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/h;->b:Ljava/util/HashMap;

    new-instance v0, Lcom/tapjoy/internal/t2;

    invoke-direct {v0}, Lcom/tapjoy/internal/t2;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/h;->c:Lcom/tapjoy/internal/t2;

    new-instance v0, Lcom/tapjoy/internal/g;

    invoke-direct {v0}, Lcom/tapjoy/internal/g;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/h;->e:Lcom/tapjoy/internal/g;

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    sget-object p0, Lcom/tapjoy/internal/s;->a:Lcom/tapjoy/internal/r;

    return-void
.end method
