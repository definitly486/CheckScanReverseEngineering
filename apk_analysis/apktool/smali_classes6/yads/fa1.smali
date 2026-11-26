.class public final Lyads/fa1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ll1;


# instance fields
.field public final a:Lyads/as2;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lyads/as2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/fa1;->a:Lyads/as2;

    iput-object p1, p0, Lyads/fa1;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/fa1;->b:Ljava/lang/String;

    return-object p0
.end method
