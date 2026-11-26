.class public final Lcu8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lpib;


# instance fields
.field public final a:Lpib;

.field public final b:Lau8;

.field public final c:Lpr;

.field public final d:Landroid/content/ContentResolver;

.field public final e:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lpib;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lpib;-><init>(I)V

    sput-object v0, Lcu8;->f:Lpib;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lau8;Lpr;Landroid/content/ContentResolver;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcu8;->f:Lpib;

    iput-object v0, p0, Lcu8;->a:Lpib;

    iput-object p2, p0, Lcu8;->b:Lau8;

    iput-object p3, p0, Lcu8;->c:Lpr;

    iput-object p4, p0, Lcu8;->d:Landroid/content/ContentResolver;

    iput-object p1, p0, Lcu8;->e:Ljava/util/ArrayList;

    return-void
.end method
