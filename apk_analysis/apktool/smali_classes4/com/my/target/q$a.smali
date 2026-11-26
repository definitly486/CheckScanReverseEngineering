.class public final Lcom/my/target/q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Ls95;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/my/target/q$a;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/my/target/q$a;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/my/target/q$a;->c:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/my/target/q$a;->d:Z

    new-instance p3, Ls95;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p4, p2, p6}, Ls95;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/my/target/q$a;->e:Ls95;

    return-void
.end method
