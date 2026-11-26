.class public final Ltk8;
.super Lcom/tapjoy/TJConnectListener;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lv59$a;


# direct methods
.method public constructor <init>(Lv59$a;)V
    .locals 0

    iput-object p1, p0, Ltk8;->b:Lv59$a;

    invoke-direct {p0}, Lcom/tapjoy/TJConnectListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectFailure(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Ltk8;->b:Lv59$a;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lv59$a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onConnectSuccess()V
    .locals 1

    iget-object p0, p0, Ltk8;->b:Lv59$a;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lv59$a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
