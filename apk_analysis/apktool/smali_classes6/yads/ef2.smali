.class public final Lyads/ef2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Lyads/cf2;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;Lyads/cf2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ef2;->a:Ljava/util/HashMap;

    iput-object p2, p0, Lyads/ef2;->b:Lyads/cf2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lyads/cf2;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lyads/ef2;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/cf2;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    iget-object p0, p0, Lyads/ef2;->b:Lyads/cf2;

    return-object p0
.end method
