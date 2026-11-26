.class public final Lkd$g$a$c;
.super Lkd$g$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$g$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final e:Lkd$g$a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkd$g$a$c;

    const-string v1, "CQ_fault"

    invoke-direct {v0, v1}, Lkd$g$a;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lkd$g$a$c;->e:Lkd$g$a$c;

    return-void
.end method
