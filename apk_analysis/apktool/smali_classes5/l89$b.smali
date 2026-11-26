.class public final Ll89$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll89;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll89;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Ll89$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll89$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ll89$b;->a:Ll89$b;

    return-void
.end method


# virtual methods
.method public final a(Lcu3;)V
    .locals 0

    invoke-interface {p1}, Lcu3;->showSuccess()V

    return-void
.end method
