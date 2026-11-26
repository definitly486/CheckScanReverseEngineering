.class public final synthetic Ltc6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lwc6;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lwc6;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltc6;->b:Lwc6;

    iput-object p2, p0, Ltc6;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ltc6;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object p0, p0, Ltc6;->b:Lwc6;

    invoke-virtual {p0, v0, v1}, Lwc6;->h(Ljava/lang/Object;Z)V

    return-void
.end method
