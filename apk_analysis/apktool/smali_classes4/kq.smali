.class public final synthetic Lkq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkq;->b:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lkq;->b:I

    invoke-static {p0}, Lcom/tapjoy/internal/AppUsageForegroundService;->a(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
