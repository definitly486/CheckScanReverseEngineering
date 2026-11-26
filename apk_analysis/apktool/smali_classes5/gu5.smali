.class public final Lgu5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfu5;


# instance fields
.field public final a:Ltt5;


# direct methods
.method public constructor <init>(Ltt5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgu5;->a:Ltt5;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lbu5;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lgu5;->a:Ltt5;

    invoke-interface {p0, p1, p2}, Ltt5;->b(Ljava/lang/String;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;Lau5;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lgu5;->a:Ltt5;

    invoke-interface {p0, p1, p2}, Ltt5;->a(Ljava/lang/String;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
