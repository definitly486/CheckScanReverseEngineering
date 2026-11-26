.class public abstract Lcom/tapjoy/internal/d2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tapjoy/internal/h2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/tapjoy/internal/h;->f:I

    new-instance v0, Lcom/tapjoy/internal/h2;

    invoke-direct {v0}, Lcom/tapjoy/internal/h2;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
