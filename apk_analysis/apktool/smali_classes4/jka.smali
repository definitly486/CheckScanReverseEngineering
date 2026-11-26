.class public final synthetic Ljka;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic c:Ljka;


# instance fields
.field public final synthetic b:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Ljka;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljka;-><init>(I)V

    sput-object v0, Ljka;->c:Ljka;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ljka;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final synthetic a()V
    .locals 0

    return-void
.end method

.method private final b()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget p0, p0, Ljka;->b:I

    return-void
.end method
