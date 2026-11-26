.class public Lio/appmetrica/analytics/profile/BirthDateAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lio/appmetrica/analytics/impl/G6;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/G6;

    new-instance v1, Lio/appmetrica/analytics/coreutils/internal/validation/DummyValidator;

    invoke-direct {v1}, Lio/appmetrica/analytics/coreutils/internal/validation/DummyValidator;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/impl/Ol;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/Ol;-><init>()V

    const-string v3, "appmetrica_birth_date"

    invoke-direct {v0, v3, v1, v2}, Lio/appmetrica/analytics/impl/G6;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/coreutils/internal/validation/Validator;Lio/appmetrica/analytics/impl/y2;)V

    iput-object v0, p0, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a:Lio/appmetrica/analytics/impl/G6;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Calendar;Ljava/lang/String;Lio/appmetrica/analytics/impl/X2;)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 7

    new-instance v0, Lio/appmetrica/analytics/profile/UserProfileUpdate;

    new-instance v1, Lio/appmetrica/analytics/impl/mn;

    iget-object p0, p0, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a:Lio/appmetrica/analytics/impl/G6;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/G6;->c:Ljava/lang/String;

    new-instance p0, Ljava/text/SimpleDateFormat;

    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lio/appmetrica/analytics/coreutils/internal/limitation/DummyTrimmer;

    invoke-direct {v4}, Lio/appmetrica/analytics/coreutils/internal/limitation/DummyTrimmer;-><init>()V

    new-instance v5, Lio/appmetrica/analytics/coreutils/internal/validation/DummyValidator;

    invoke-direct {v5}, Lio/appmetrica/analytics/coreutils/internal/validation/DummyValidator;-><init>()V

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/mn;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/coreutils/internal/limitation/Trimmer;Lio/appmetrica/analytics/coreutils/internal/validation/Validator;Lio/appmetrica/analytics/impl/X2;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/profile/UserProfileUpdate;-><init>(Lio/appmetrica/analytics/impl/qo;)V

    return-object v0
.end method

.method public withAge(I)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/qo;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v0, p1

    new-instance p1, Ljava/util/GregorianCalendar;

    invoke-direct {p1}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    new-instance v0, Lio/appmetrica/analytics/impl/E4;

    iget-object v1, p0, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a:Lio/appmetrica/analytics/impl/G6;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/G6;->b:Lio/appmetrica/analytics/impl/y2;

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/E4;-><init>(Lio/appmetrica/analytics/impl/y2;)V

    const-string v1, "yyyy"

    invoke-virtual {p0, p1, v1, v0}, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lio/appmetrica/analytics/impl/X2;)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object p0

    return-object p0
.end method

.method public withAgeIfUndefined(I)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/qo;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v0, p1

    new-instance p1, Ljava/util/GregorianCalendar;

    invoke-direct {p1}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    new-instance v0, Lio/appmetrica/analytics/impl/ql;

    iget-object v1, p0, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a:Lio/appmetrica/analytics/impl/G6;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/G6;->b:Lio/appmetrica/analytics/impl/y2;

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/ql;-><init>(Lio/appmetrica/analytics/impl/y2;)V

    const-string v1, "yyyy"

    invoke-virtual {p0, p1, v1, v0}, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lio/appmetrica/analytics/impl/X2;)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object p0

    return-object p0
.end method

.method public withBirthDate(I)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/qo;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 36
    new-instance p1, Lio/appmetrica/analytics/impl/E4;

    iget-object v1, p0, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a:Lio/appmetrica/analytics/impl/G6;

    .line 37
    iget-object v1, v1, Lio/appmetrica/analytics/impl/G6;->b:Lio/appmetrica/analytics/impl/y2;

    .line 38
    invoke-direct {p1, v1}, Lio/appmetrica/analytics/impl/E4;-><init>(Lio/appmetrica/analytics/impl/y2;)V

    const-string v1, "yyyy"

    invoke-virtual {p0, v0, v1, p1}, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lio/appmetrica/analytics/impl/X2;)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object p0

    return-object p0
.end method

.method public withBirthDate(II)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/qo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr p2, v1

    const/4 p1, 0x2

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    new-instance p1, Lio/appmetrica/analytics/impl/E4;

    iget-object p2, p0, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a:Lio/appmetrica/analytics/impl/G6;

    iget-object p2, p2, Lio/appmetrica/analytics/impl/G6;->b:Lio/appmetrica/analytics/impl/y2;

    invoke-direct {p1, p2}, Lio/appmetrica/analytics/impl/E4;-><init>(Lio/appmetrica/analytics/impl/y2;)V

    const-string p2, "yyyy-MM"

    invoke-virtual {p0, v0, p2, p1}, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lio/appmetrica/analytics/impl/X2;)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object p0

    return-object p0
.end method

.method public withBirthDate(III)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/qo;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr p2, v1

    const/4 p1, 0x2

    .line 45
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 46
    invoke-virtual {v0, p1, p3}, Ljava/util/Calendar;->set(II)V

    .line 47
    new-instance p1, Lio/appmetrica/analytics/impl/E4;

    iget-object p2, p0, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a:Lio/appmetrica/analytics/impl/G6;

    .line 48
    iget-object p2, p2, Lio/appmetrica/analytics/impl/G6;->b:Lio/appmetrica/analytics/impl/y2;

    .line 49
    invoke-direct {p1, p2}, Lio/appmetrica/analytics/impl/E4;-><init>(Lio/appmetrica/analytics/impl/y2;)V

    .line 50
    const-string p2, "yyyy-MM-dd"

    invoke-virtual {p0, v0, p2, p1}, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lio/appmetrica/analytics/impl/X2;)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object p0

    return-object p0
.end method

.method public withBirthDate(Ljava/util/Calendar;)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            ")",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/qo;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Lio/appmetrica/analytics/impl/E4;

    iget-object v1, p0, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a:Lio/appmetrica/analytics/impl/G6;

    .line 40
    iget-object v1, v1, Lio/appmetrica/analytics/impl/G6;->b:Lio/appmetrica/analytics/impl/y2;

    .line 41
    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/E4;-><init>(Lio/appmetrica/analytics/impl/y2;)V

    .line 42
    const-string v1, "yyyy-MM-dd"

    invoke-virtual {p0, p1, v1, v0}, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lio/appmetrica/analytics/impl/X2;)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object p0

    return-object p0
.end method

.method public withBirthDateIfUndefined(I)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/qo;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 36
    new-instance p1, Lio/appmetrica/analytics/impl/ql;

    iget-object v1, p0, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a:Lio/appmetrica/analytics/impl/G6;

    .line 37
    iget-object v1, v1, Lio/appmetrica/analytics/impl/G6;->b:Lio/appmetrica/analytics/impl/y2;

    .line 38
    invoke-direct {p1, v1}, Lio/appmetrica/analytics/impl/ql;-><init>(Lio/appmetrica/analytics/impl/y2;)V

    .line 39
    const-string v1, "yyyy"

    invoke-virtual {p0, v0, v1, p1}, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lio/appmetrica/analytics/impl/X2;)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object p0

    return-object p0
.end method

.method public withBirthDateIfUndefined(II)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/qo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr p2, v1

    const/4 p1, 0x2

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    new-instance p1, Lio/appmetrica/analytics/impl/ql;

    iget-object p2, p0, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a:Lio/appmetrica/analytics/impl/G6;

    iget-object p2, p2, Lio/appmetrica/analytics/impl/G6;->b:Lio/appmetrica/analytics/impl/y2;

    invoke-direct {p1, p2}, Lio/appmetrica/analytics/impl/ql;-><init>(Lio/appmetrica/analytics/impl/y2;)V

    const-string p2, "yyyy-MM"

    invoke-virtual {p0, v0, p2, p1}, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lio/appmetrica/analytics/impl/X2;)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object p0

    return-object p0
.end method

.method public withBirthDateIfUndefined(III)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/qo;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v1, 0x1

    .line 45
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr p2, v1

    const/4 p1, 0x2

    .line 46
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 47
    invoke-virtual {v0, p1, p3}, Ljava/util/Calendar;->set(II)V

    .line 48
    new-instance p1, Lio/appmetrica/analytics/impl/ql;

    iget-object p2, p0, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a:Lio/appmetrica/analytics/impl/G6;

    .line 49
    iget-object p2, p2, Lio/appmetrica/analytics/impl/G6;->b:Lio/appmetrica/analytics/impl/y2;

    .line 50
    invoke-direct {p1, p2}, Lio/appmetrica/analytics/impl/ql;-><init>(Lio/appmetrica/analytics/impl/y2;)V

    .line 51
    const-string p2, "yyyy-MM-dd"

    invoke-virtual {p0, v0, p2, p1}, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lio/appmetrica/analytics/impl/X2;)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object p0

    return-object p0
.end method

.method public withBirthDateIfUndefined(Ljava/util/Calendar;)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            ")",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/qo;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Lio/appmetrica/analytics/impl/ql;

    iget-object v1, p0, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a:Lio/appmetrica/analytics/impl/G6;

    .line 41
    iget-object v1, v1, Lio/appmetrica/analytics/impl/G6;->b:Lio/appmetrica/analytics/impl/y2;

    .line 42
    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/ql;-><init>(Lio/appmetrica/analytics/impl/y2;)V

    .line 43
    const-string v1, "yyyy-MM-dd"

    invoke-virtual {p0, p1, v1, v0}, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lio/appmetrica/analytics/impl/X2;)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object p0

    return-object p0
.end method

.method public withValueReset()Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/qo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/profile/UserProfileUpdate;

    new-instance v1, Lio/appmetrica/analytics/impl/Ji;

    iget-object p0, p0, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a:Lio/appmetrica/analytics/impl/G6;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/G6;->c:Ljava/lang/String;

    new-instance v2, Lio/appmetrica/analytics/coreutils/internal/validation/DummyValidator;

    invoke-direct {v2}, Lio/appmetrica/analytics/coreutils/internal/validation/DummyValidator;-><init>()V

    new-instance v3, Lio/appmetrica/analytics/impl/Ol;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/Ol;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v1, v4, p0, v2, v3}, Lio/appmetrica/analytics/impl/Ji;-><init>(ILjava/lang/String;Lio/appmetrica/analytics/coreutils/internal/validation/Validator;Lio/appmetrica/analytics/impl/y2;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/profile/UserProfileUpdate;-><init>(Lio/appmetrica/analytics/impl/qo;)V

    return-object v0
.end method
