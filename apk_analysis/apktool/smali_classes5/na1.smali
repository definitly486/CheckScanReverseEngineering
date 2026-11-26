.class public final Lna1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/CheckScanApplication;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lna1;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lna1;->a:Ljava/lang/Object;

    new-instance v0, Lj15;

    invoke-direct {v0, p1}, Lj15;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lna1;->a:Ljava/lang/Object;

    return-void
.end method
