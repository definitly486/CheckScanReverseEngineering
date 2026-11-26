.class public final synthetic Lp2a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ut5;


# instance fields
.field public final synthetic b:Lyads/mq2;


# direct methods
.method public synthetic constructor <init>(Lyads/mq2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp2a;->b:Lyads/mq2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lp2a;->b:Lyads/mq2;

    invoke-virtual {p0}, Lyads/mq2;->c()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
