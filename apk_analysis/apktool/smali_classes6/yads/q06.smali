.class public final Lyads/q06;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[Lyads/n65;

.field public final c:[Lyads/er2;

.field public final d:Lyads/m16;

.field public final e:Lyads/sw3;


# direct methods
.method public constructor <init>([Lyads/n65;[Lyads/er2;Lyads/m16;Lyads/sw3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/q06;->b:[Lyads/n65;

    invoke-virtual {p2}, [Lyads/er2;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lyads/er2;

    iput-object p2, p0, Lyads/q06;->c:[Lyads/er2;

    iput-object p3, p0, Lyads/q06;->d:Lyads/m16;

    iput-object p4, p0, Lyads/q06;->e:Lyads/sw3;

    array-length p1, p1

    iput p1, p0, Lyads/q06;->a:I

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 0

    iget-object p0, p0, Lyads/q06;->b:[Lyads/n65;

    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
