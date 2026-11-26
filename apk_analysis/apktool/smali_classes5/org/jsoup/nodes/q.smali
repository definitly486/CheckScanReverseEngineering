.class public final Lorg/jsoup/nodes/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/q$b;,
        Lorg/jsoup/nodes/q$a;
    }
.end annotation


# static fields
.field public static final c:Lorg/jsoup/nodes/q;


# instance fields
.field public final a:Lorg/jsoup/nodes/q$b;

.field public final b:Lorg/jsoup/nodes/q$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/jsoup/nodes/q$b;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1, v1}, Lorg/jsoup/nodes/q$b;-><init>(III)V

    new-instance v1, Lorg/jsoup/nodes/q;

    invoke-direct {v1, v0, v0}, Lorg/jsoup/nodes/q;-><init>(Lorg/jsoup/nodes/q$b;Lorg/jsoup/nodes/q$b;)V

    sput-object v1, Lorg/jsoup/nodes/q;->c:Lorg/jsoup/nodes/q;

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/nodes/q$b;Lorg/jsoup/nodes/q$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jsoup/nodes/q;->a:Lorg/jsoup/nodes/q$b;

    iput-object p2, p0, Lorg/jsoup/nodes/q;->b:Lorg/jsoup/nodes/q$b;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_3

    const-class v0, Lorg/jsoup/nodes/q;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/jsoup/nodes/q;

    iget-object v0, p0, Lorg/jsoup/nodes/q;->a:Lorg/jsoup/nodes/q$b;

    iget-object v1, p1, Lorg/jsoup/nodes/q;->a:Lorg/jsoup/nodes/q$b;

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/q$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/jsoup/nodes/q;->b:Lorg/jsoup/nodes/q$b;

    iget-object p1, p1, Lorg/jsoup/nodes/q;->b:Lorg/jsoup/nodes/q$b;

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/q$b;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/q;->a:Lorg/jsoup/nodes/q$b;

    iget-object p0, p0, Lorg/jsoup/nodes/q;->b:Lorg/jsoup/nodes/q$b;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jsoup/nodes/q;->a:Lorg/jsoup/nodes/q$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/jsoup/nodes/q;->b:Lorg/jsoup/nodes/q$b;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
