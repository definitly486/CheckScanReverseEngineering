.class public final Lpy0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lpv8;

.field public final b:Ltv4;

.field public final c:Ltv4;

.field public final d:Ltv4;


# direct methods
.method public constructor <init>(Lpv8;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Luv4;->a()Ltv4;

    move-result-object v0

    iput-object v0, p0, Lpy0;->b:Ltv4;

    invoke-static {}, Luv4;->a()Ltv4;

    move-result-object v0

    iput-object v0, p0, Lpy0;->c:Ltv4;

    invoke-static {}, Luv4;->a()Ltv4;

    move-result-object v0

    iput-object v0, p0, Lpy0;->d:Ltv4;

    iput-object p1, p0, Lpy0;->a:Lpv8;

    return-void
.end method
