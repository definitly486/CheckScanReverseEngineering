.class public final Lorg/jsoup/nodes/q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final synthetic c:I


# instance fields
.field public final a:Lorg/jsoup/nodes/q;

.field public final b:Lorg/jsoup/nodes/q;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/nodes/q;Lorg/jsoup/nodes/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jsoup/nodes/q$a;->a:Lorg/jsoup/nodes/q;

    iput-object p2, p0, Lorg/jsoup/nodes/q$a;->b:Lorg/jsoup/nodes/q;

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

    const-class v0, Lorg/jsoup/nodes/q$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/jsoup/nodes/q$a;

    iget-object v0, p0, Lorg/jsoup/nodes/q$a;->a:Lorg/jsoup/nodes/q;

    iget-object v1, p1, Lorg/jsoup/nodes/q$a;->a:Lorg/jsoup/nodes/q;

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/jsoup/nodes/q$a;->b:Lorg/jsoup/nodes/q;

    iget-object p1, p1, Lorg/jsoup/nodes/q$a;->b:Lorg/jsoup/nodes/q;

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/q;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/q$a;->a:Lorg/jsoup/nodes/q;

    iget-object p0, p0, Lorg/jsoup/nodes/q$a;->b:Lorg/jsoup/nodes/q;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lja8;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/nodes/q$a;->a:Lorg/jsoup/nodes/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/jsoup/nodes/q$a;->b:Lorg/jsoup/nodes/q;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lja8;->k(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
