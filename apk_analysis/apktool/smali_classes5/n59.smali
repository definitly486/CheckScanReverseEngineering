.class public final Ln59;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldf4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldf4<",
        "Lj59;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ln59;


# instance fields
.field public final synthetic a:Lrq5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrq5<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln59;

    invoke-direct {v0}, Ln59;-><init>()V

    sput-object v0, Ln59;->b:Ln59;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lrq5;

    const-string v1, "kotlin.Unit"

    sget-object v2, Lj59;->a:Lj59;

    invoke-direct {v0, v1, v2}, Lrq5;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Ln59;->a:Lrq5;

    return-void
.end method


# virtual methods
.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Ln59;->a:Lrq5;

    invoke-virtual {p0, p1}, Lrq5;->deserialize(Lud2;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    iget-object p0, p0, Ln59;->a:Lrq5;

    invoke-virtual {p0}, Lrq5;->getDescriptor()Lmp7;

    move-result-object p0

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lj59;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Ln59;->a:Lrq5;

    invoke-virtual {p0, p1, p2}, Lrq5;->serialize(Lux2;Ljava/lang/Object;)V

    return-void
.end method
