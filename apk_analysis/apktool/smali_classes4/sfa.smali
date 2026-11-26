.class public final synthetic Lsfa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lqfa$b;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lqfa$b;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsfa;->b:Lqfa$b;

    iput p2, p0, Lsfa;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lsfa;->b:Lqfa$b;

    iget p0, p0, Lsfa;->c:I

    iget-object v0, v0, Lqfa$b;->c:Le5a;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Le5a;->accept(Ljava/lang/Object;)V

    return-void
.end method
