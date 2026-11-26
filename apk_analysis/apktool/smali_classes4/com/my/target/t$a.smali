.class public final Lcom/my/target/t$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:Ljava/util/HashMap;

.field public final f:Lb8;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;IILb8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/t$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/my/target/t$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/my/target/t$a;->e:Ljava/util/HashMap;

    iput p4, p0, Lcom/my/target/t$a;->d:I

    iput p5, p0, Lcom/my/target/t$a;->c:I

    iput-object p6, p0, Lcom/my/target/t$a;->f:Lb8;

    return-void
.end method
