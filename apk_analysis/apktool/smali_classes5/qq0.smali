.class public final Lqq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcs0;


# instance fields
.field public final a:Lq71;


# direct methods
.method public constructor <init>(Lq71;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqq0;->a:Lq71;

    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lqq0;->a:Lq71;

    return-object p0
.end method

.method public final id()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lqq0;->a:Lq71;

    iget p0, p0, Lq71;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
