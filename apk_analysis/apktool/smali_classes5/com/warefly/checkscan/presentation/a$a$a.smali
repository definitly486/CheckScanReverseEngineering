.class public final Lcom/warefly/checkscan/presentation/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lid3;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/a;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/a$a$a;->b:Lcom/warefly/checkscan/presentation/a;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/a$a$a;->b:Lcom/warefly/checkscan/presentation/a;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/a;->d:Lo87;

    new-instance p2, Ljg7;

    invoke-direct {p2, p1}, Ljg7;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lo87;->d(Ldf7;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
