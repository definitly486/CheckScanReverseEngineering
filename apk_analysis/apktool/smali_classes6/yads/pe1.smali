.class public final Lyads/pe1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ll1;


# instance fields
.field public final a:Lyads/as2;

.field public final b:Lyads/as2;

.field public final c:Ljava/util/List;

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lyads/as2;Lyads/as2;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/pe1;->a:Lyads/as2;

    iput-object p2, p0, Lyads/pe1;->b:Lyads/as2;

    iput-object p3, p0, Lyads/pe1;->c:Ljava/util/List;

    iput-object p4, p0, Lyads/pe1;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/pe1;->d:Ljava/lang/String;

    return-object p0
.end method
