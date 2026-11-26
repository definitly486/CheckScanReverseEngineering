.class public final Ll89$a;
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
    name = "a"
.end annotation


# static fields
.field public static final a:Ll89$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll89$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ll89$a;->a:Ll89$a;

    return-void
.end method


# virtual methods
.method public final a(Lcu3;)V
    .locals 0

    invoke-interface {p1}, Lcu3;->showError()V

    return-void
.end method
