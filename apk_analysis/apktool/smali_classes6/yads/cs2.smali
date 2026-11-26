.class public final Lyads/cs2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/or;


# instance fields
.field public final a:Lyads/as2;

.field public final b:Lyads/fs2;


# direct methods
.method public constructor <init>(Lyads/as2;Lyads/fs2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/cs2;->a:Lyads/as2;

    iput-object p2, p0, Lyads/cs2;->b:Lyads/fs2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 0

    iget-object p1, p0, Lyads/cs2;->a:Lyads/as2;

    iget-object p0, p0, Lyads/cs2;->b:Lyads/fs2;

    invoke-virtual {p1, p0}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
