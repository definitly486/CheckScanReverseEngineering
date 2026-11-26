.class public final Lyads/ew1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lyads/sv1;


# instance fields
.field public final a:Lyads/ti1;

.field public final b:Lyads/oa1;

.field public final c:Lyads/hd1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfg;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/ew1;->d:Lyads/sv1;

    return-void
.end method

.method public constructor <init>(Lyads/ti1;Lyads/oa1;Lyads/hd1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ew1;->a:Lyads/ti1;

    iput-object p2, p0, Lyads/ew1;->b:Lyads/oa1;

    iput-object p3, p0, Lyads/ew1;->c:Lyads/hd1;

    return-void
.end method

.method public static final a(Z)V
    .locals 0

    return-void
.end method
